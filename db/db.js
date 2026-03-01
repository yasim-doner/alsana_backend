import { Pool } from "pg";
import "dotenv/config";

// Veritabanı bağlantı ayarları
const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
});

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
    console.log("Arama Sonuçları:");
    return res.rows; // Gelen veriler burada
  } catch (err) {
    console.error("Sorgu hatası:", err.stack);
  }
}

export { searchProducts };
