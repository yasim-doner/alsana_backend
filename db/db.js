import { Pool } from "pg";
import "dotenv/config";
import { log } from "../utils/logger.js";

// Veritabanı bağlantı ayarları
const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
});

// DB bağlantı durumunu logla
pool.on("connect", () => log.info("DB bağlantısı kuruldu"));
pool.on("error", (err) => log.error("DB bağlantı hatası", err));

// İzin verilen filtre değerleri (SQL injection koruması)
const VALID_CPU_TYPES = ["AMD", "Intel"];
const VALID_GPU_TYPES = ["NVIDIA", "AMD"];

/**
 * AI Destekli Ürün Arama Fonksiyonu (Filtre destekli)
 */
async function searchProducts(searchTerm, filters = {}) {
  const values = [searchTerm, process.env.GEMINI_API_KEY];
  const conditions = [];
  let paramIndex = 3;

  // İşlemci Türü filtresi
  if (filters.cpuType && filters.cpuType.length > 0) {
    const validCpu = filters.cpuType.filter((t) => VALID_CPU_TYPES.includes(t));
    if (validCpu.length > 0) {
      const cpuConds = validCpu
        .map((type) => {
          if (type === "AMD") {
            return `technical_specs->>'İşlemci Nesil' ILIKE '%Ryzen%'`;
          } else if (type === "Intel") {
            return `(technical_specs->>'İşlemci Nesil' ILIKE '%Intel%' OR technical_specs->>'İşlemci Nesil' ILIKE '%Core%')`;
          }
          return null;
        })
        .filter(Boolean);
      if (cpuConds.length > 0) {
        conditions.push(`(${cpuConds.join(" OR ")})`);
      }
    }
  }

  // GPU Üretici filtresi
  if (filters.gpuType && filters.gpuType.length > 0) {
    const validGpu = filters.gpuType.filter((t) => VALID_GPU_TYPES.includes(t));
    if (validGpu.length > 0) {
      const gpuConds = validGpu.map((type) => {
        values.push(type);
        return `technical_specs->>'GPU Üretici' = $${paramIndex++}`;
      });
      conditions.push(`(${gpuConds.join(" OR ")})`);
    }
  }

  const whereClause =
    conditions.length > 0 ? `WHERE ${conditions.join(" AND ")}` : "";

  const query = `
    SELECT
      product_name,
      price,
      url,
      embedding <=> ai.litellm_embed(
          model := 'gemini/gemini-embedding-001',
          input_text := $1,
          api_key := $2
      ) as distance
    FROM computers
    ${whereClause}
    ORDER BY distance ASC
    LIMIT 5;
  `;

  // SQL Injection'dan korunmak için parametreleri ($1, $2, ...) dışarıdan veriyoruz
  try {
    const res = await pool.query(query, values);
    log.info(
      `DB sorgusu başarılı: ${res.rows.length} satır döndü (filtreler: ${JSON.stringify(filters)})`,
    );
    return res.rows;
  } catch (err) {
    log.error("DB sorgu hatası", err);
    throw err;
  }
}

/**
 * RAG: İlk sohbet başlatma — generate_rag_response PL/pgSQL fonksiyonunu çağırır
 */
async function generateRagResponse(sessionId, queryText) {
  const query = `SELECT generate_rag_response($1, $2) AS response;`;
  const values = [sessionId, queryText];

  try {
    const res = await pool.query(query, values);
    const response = res.rows[0]?.response || "";
    log.info(
      `RAG yanıtı üretildi: session=${sessionId}, uzunluk=${response.length}`,
    );
    return response;
  } catch (err) {
    log.error("RAG generate hatası", err);
    throw err;
  }
}

/**
 * RAG: Takip sorusu — chat_with_context PL/pgSQL fonksiyonunu çağırır
 */
async function chatWithContext(sessionId, followUpQuery) {
  const query = `SELECT chat_with_context($1, $2) AS response;`;
  const values = [sessionId, followUpQuery];

  try {
    const res = await pool.query(query, values);
    const response = res.rows[0]?.response || "";
    log.info(
      `Chat yanıtı üretildi: session=${sessionId}, uzunluk=${response.length}`,
    );
    return response;
  } catch (err) {
    log.error("Chat context hatası", err);
    throw err;
  }
}

export { searchProducts, generateRagResponse, chatWithContext };
