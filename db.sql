DROP TABLE IF EXISTS computer_brands CASCADE;

CREATE TABLE IF NOT EXISTS computer_brands (
  id bigserial PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  embedding vector(1536) -- Assuming the embedding dimension is 1536 for text-embedding-ada-002
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


SELECT * FROM computer_brands;

UPDATE computer_brands SET embedding = ai.embedding_openai(description, 1, "text-embedding-3-small")::vector;