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

/**
 * AI Destekli Ürün Arama Fonksiyonu
 */
async function searchProducts(searchTerm) {
  const query = `
    SELECT 
      name, 
      description, 
      embedding <=> ai.litellm_embed(
        model := 'gemini/gemini-embedding-001', 
        input_text := $1, 
        api_key := $2
      ) as distance
    FROM computer_brands
    ORDER BY distance ASC
  `;

  // SQL Injection'dan korunmak için parametreleri ($1, $2) dışarıdan veriyoruz
  const values = [searchTerm, process.env.GEMINI_API_KEY];

  try {
    const res = await pool.query(query, values);
    log.info(`DB sorgusu başarılı: ${res.rows.length} satır döndü`);
    return res.rows;
  } catch (err) {
    log.error("DB sorgu hatası", err);
    throw err;
  }
}

export { searchProducts };
