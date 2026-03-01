import express from "express";
import "dotenv/config.js";
import helmet from "helmet";
import cors from "cors";
import rateLimit from "express-rate-limit";
import { filterXSS } from "xss";
import { searchProducts } from "./db/db.js";

const PORT = process.env.PORT;
const app = express();

// --- GÜVENLİK KATMANLARI ---

// 1) Helmet: XSS, clickjacking, MIME-sniffing gibi saldırılara karşı HTTP başlıkları ayarlar
app.use(helmet());

// 2) CORS: Frontend'den gelen isteklere izin ver
app.use(
  cors({
    origin: ["http://localhost:5173", "http://localhost:3000"],
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
app.use(limiter);

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
    return res.status(400).json({ error: "Search term is required" });
  }

  // Uzunluk sınırı (aşırı uzun girdileri reddet)
  if (rawSearchTerm.length > 500) {
    return res
      .status(400)
      .json({ error: "Search term is too long (max 500 characters)" });
  }

  // XSS temizleme: <script>, onerror= gibi zararlı HTML/JS kodlarını temizler
  const searchTerm = filterXSS(rawSearchTerm.trim());

  try {
    const products = await searchProducts(searchTerm);
    res.json(products);
  } catch (error) {
    console.error("Search error:", error.message);
    res
      .status(500)
      .json({ error: "An error occurred while searching for products" });
  }
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
