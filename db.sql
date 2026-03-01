CREATE EXTENSION IF NOT EXISTS ai CASCADE;


DROP TABLE IF EXISTS computer_brands CASCADE;

CREATE TABLE IF NOT EXISTS computer_brands (
  id bigserial PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  embedding vector(3072)
);

INSERT INTO computer_brands (name, description) VALUES
('Apple', 'Premium manufacturer of laptops and desktop computers known for macOS and innovation'),
('Dell', 'Multinational technology company specializing in computing devices and enterprise solutions'),
('HP', 'Hewlett-Packard produces personal computers, laptops, and printing devices worldwide'),
('Lenovo', 'Chinese multinational tech company known for ThinkPad laptops and affordable computers'),
('ASUS', 'Taiwan-based company famous for gaming laptops, ROG series, and high-performance computers'),
('Acer', 'Taiwanese manufacturer offering budget-friendly and mid-range laptops and desktops'),
('MSI', 'Micro-Star International specializes in gaming computers and graphics cards'),
('Razer', 'Premium gaming brand known for high-performance gaming laptops and peripherals'),
('Microsoft Surface', 'Microsoft''s line of 2-in-1 laptops and tablets combining portability with power'),
('Alienware', 'Dell''s gaming-focused sub-brand creating high-end gaming computers and laptops');

-- Insert embeddings using Gemini API via LiteLLM
UPDATE computer_brands SET embedding =
  ai.litellm_embed(
    model := 'gemini/gemini-embedding-001',
    input_text := description,
    api_key := 'AIzaSyD3V6kx2hDQ6PrORNsEW_6ZllXXyPTRhN4'
  );

SELECT
    name,
    description,
    embedding <=> ai.litellm_embed(
        model := 'gemini/gemini-embedding-001',
        input_text := 'Office Laptops',
        api_key := 'AIzaSyD3V6kx2hDQ6PrORNsEW_6ZllXXyPTRhN4'
    ) as distance
FROM computer_brands
ORDER BY distance ASC
LIMIT 3;

Select * from computer_brands;