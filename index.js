import express from "express";
import "dotenv/config.js";
import crypto from "crypto";
import helmet from "helmet";
import cors from "cors";
import morgan from "morgan";
import rateLimit from "express-rate-limit";
import { filterXSS } from "xss";
import {
  searchProducts,
  chatWithContext,
} from "./db/db.js";
import { log } from "./utils/logger.js";

const PORT = process.env.PORT;
const app = express();

// --- GÜVENLİK KATMANLARI ---

// 1) Helmet: XSS, clickjacking, MIME-sniffing gibi saldırılara karşı HTTP başlıkları ayarlar
app.use(helmet());

// 2) Morgan: HTTP istek loglaması
app.use(
  morgan(":method :url :status :response-time ms", {
    stream: { write: (msg) => log.info(`HTTP ${msg.trim()}`) },
  }),
);

// 2) CORS: Frontend'den gelen isteklere izin ver
app.use(
  cors({
    origin: [
      "http://localhost:5173",
      "http://localhost:3000",
      "https://alsana.site",
      "http://alsana.site",
    ],
    methods: ["GET", "POST"],
  }),
);

// 2) Rate Limiting: Brute-force ve DDoS saldırılarını önlemek için istek sınırı
const limiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 dakika
  max: 100, // Her IP başına 15 dk'da en fazla 100 istek
  standardHeaders: true,
  legacyHeaders: false,
  message: {
    error: "Çok fazla istek gönderdiniz. Lütfen daha sonra tekrar deneyin.",
  },
});

// 3) JSON body parse (ileride POST istekleri için)
app.use(express.json({ limit: "10kb" })); // Body boyutunu sınırla

// --- ROUTE'LAR ---

app.get("/", (req, res) => {
  res.send("ALLLSANA BACKEND!");
});

// AI Destekli Ürün Arama API'si
app.get("/search", async (req, res) => {
  const rawSearchTerm = req.query.q;

  // Boş kontrol
  if (!rawSearchTerm) {
    log.warn("Boş arama terimi ile istek geldi");
    return res.status(400).json({ error: "Search term is required" });
  }

  // Uzunluk sınırı (aşırı uzun girdileri reddet)
  if (rawSearchTerm.length > 500) {
    log.warn(
      `Çok uzun arama terimi reddedildi (${rawSearchTerm.length} karakter)`,
    );
    return res
      .status(400)
      .json({ error: "Search term is too long (max 500 characters)" });
  }

  // XSS temizleme: <script>, onerror= gibi zararlı HTML/JS kodlarını temizler
  const searchTerm = filterXSS(rawSearchTerm.trim());

  // Filtre parametrelerini al (virgülle ayrılmış: cpuType=AMD,Intel&gpuType=NVIDIA)
  const filters = {};
  if (req.query.cpuType) {
    filters.cpuType = req.query.cpuType.split(",").map((s) => s.trim());
  }
  if (req.query.gpuType) {
    filters.gpuType = req.query.gpuType.split(",").map((s) => s.trim());
  }

  log.info(
    `Arama başlatıldı: "${searchTerm}" | Filtreler: ${JSON.stringify(filters)}`,
  );

  try {
    const startTime = Date.now();
    const products = await searchProducts(searchTerm, filters);
    const duration = Date.now() - startTime;
    log.info(
      `Arama tamamlandı: "${searchTerm}" → ${products?.length || 0} sonuç (${duration}ms)`,
    );
    res.json(products);
  } catch (error) {
    log.error(`Arama hatası: "${searchTerm}"`, error);
    res
      .status(500)
      .json({ error: "An error occurred while searching for products" });
  }
});

// --- RAG CHAT ENDPOINT'LERİ ---

// Chat başlatma: İlk arama sorgusuyla RAG yanıtı üret
app.post("/chat/start", async (req, res) => {
  const rawQuery = req.body.query;

  if (!rawQuery || typeof rawQuery !== "string") {
    log.warn("Chat start: boş sorgu");
    return res.status(400).json({ error: "Query is required" });
  }

  if (rawQuery.length > 500) {
    log.warn(`Chat start: çok uzun sorgu (${rawQuery.length} karakter)`);
    return res
      .status(400)
      .json({ error: "Query is too long (max 500 characters)" });
  }

  const query = filterXSS(rawQuery.trim());
  const sessionId = crypto.randomUUID();

  // Filtre bilgilerini al (loglama için)
  const cpuType = req.body.cpuType || "";
  const gpuType = req.body.gpuType || "";

  log.info(
    `Chat başlatılıyor: session=${sessionId}, sorgu="${query}", cpu=${cpuType}, gpu=${gpuType}`,
  );

  try {
    const startTime = Date.now();
    const response = await chatWithContext(sessionId, query);
    const duration = Date.now() - startTime;
    log.info(`Chat başlatıldı: session=${sessionId} (${duration}ms)`);
    res.json({ sessionId, response });
  } catch (error) {
    log.error(`Chat start hatası: session=${sessionId}`, error);
    res.status(500).json({ error: "AI yanıtı oluşturulurken hata oluştu" });
  }
});

// Takip sorusu: Mevcut context ile devam et
app.post("/chat/message", async (req, res) => {
  const { sessionId, query: rawQuery } = req.body;

  if (!sessionId || typeof sessionId !== "string") {
    log.warn("Chat message: sessionId eksik");
    return res.status(400).json({ error: "Session ID is required" });
  }

  if (!rawQuery || typeof rawQuery !== "string") {
    log.warn("Chat message: boş sorgu");
    return res.status(400).json({ error: "Query is required" });
  }

  if (rawQuery.length > 500) {
    log.warn(`Chat message: çok uzun sorgu (${rawQuery.length} karakter)`);
    return res
      .status(400)
      .json({ error: "Query is too long (max 500 characters)" });
  }

  const query = filterXSS(rawQuery.trim());

  log.info(`Chat mesajı: session=${sessionId}, sorgu="${query}"`);

  try {
    const startTime = Date.now();
    const response = await chatWithContext(sessionId, query);
    const duration = Date.now() - startTime;
    log.info(`Chat yanıtı: session=${sessionId} (${duration}ms)`);
    res.json({ response });
  } catch (error) {
    log.error(`Chat message hatası: session=${sessionId}`, error);
    res.status(500).json({ error: "AI yanıtı oluşturulurken hata oluştu" });
  }
});

app.listen(PORT, "0.0.0.0", () => {
  log.info(`Server başlatıldı → http://localhost:${PORT}`);
});
