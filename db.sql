CREATE EXTENSION IF NOT EXISTS ai CASCADE;


DROP TABLE IF EXISTS computers CASCADE;

CREATE TABLE IF NOT EXISTS computers (
  id bigserial PRIMARY KEY,
  product_name VARCHAR(200) NOT NULL,
  price VARCHAR(50) NOT NULL,
  url VARCHAR(255) NOT NULL,
  technical_specs JSONB NOT NULL,
  description TEXT,
  comments JSONB NOT NULL,
  embedding vector(3072)
);

-- Insert embeddings using Gemini API via LiteLLM
UPDATE computers SET embedding =
  ai.litellm_embed(
    model := 'gemini/gemini-embedding-001',
    input_text := description || ' ' || technical_specs || ' ' || comments,
    api_key := ''
  );

SELECT
    product_name,
    price,
    url,
    embedding <=> ai.litellm_embed(
        model := 'gemini/gemini-embedding-001',
        input_text := 'Office Laptops',
        api_key := ''
    ) as distance
FROM computers
ORDER BY distance ASC
LIMIT 3;

CREATE OR REPLACE FUNCTION search_computers(query text, limit_num int DEFAULT 5)
RETURNS SETOF computers AS $$
  SELECT * FROM computers
  ORDER BY embedding <=> ai.litellm_embed(
        model := 'gemini/gemini-embedding-001',
        input_text := query,
        api_key := ''
    )
  LIMIT limit_num;
$$ LANGUAGE sql;


-- Create a table to store chat history and context
CREATE TABLE IF NOT EXISTS chat_sessions (
    id bigserial PRIMARY KEY,
    session_id TEXT NOT NULL,
    query_text TEXT,
    response_text TEXT,
    context_used TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION generate_rag_response(p_session_id TEXT, query_text TEXT)
RETURNS TEXT AS $$
DECLARE
    context_chunks TEXT;
    response TEXT;
BEGIN
    -- 1. Perform similarity search to find relevant computers
    SELECT string_agg(product_name || ' (Price: ' || price || '): ' || description || ' ' || technical_specs || ' ' || comments, ' ') INTO context_chunks
    FROM (
        SELECT product_name, price, description, technical_specs, comments
        FROM computers
        ORDER BY embedding <=> ai.litellm_embed(
            model := 'gemini/gemini-embedding-001',
            input_text := query_text,
            api_key := ''
        )
        LIMIT 3
    ) AS relevant_computers;

    -- 2. Generate a response using Gemini
    SELECT ai.openai_chat_complete(
        model := 'gemini-2.5-flash', 
        messages := jsonb_build_array(
            jsonb_build_object('role', 'system', 'content', 'You are a helpful computer sales assistant. Use ONLY the provided computer contexts to recommend products. If the context doesn''t have the answer, say you don''t know.'),
            jsonb_build_object('role', 'user', 'content', format('Context: %s\n\nUser Question: %s\n\nAssistant:', context_chunks, query_text))
        ),
        api_key := '',
        client_config := ai.openai_client_config(base_url := 'https://generativelanguage.googleapis.com/v1beta/openai/')
    )->'choices'->0->'message'->>'content' INTO response;

    -- 3. Save the session with its context
    INSERT INTO chat_sessions (session_id, query_text, response_text, context_used)
    VALUES (p_session_id, query_text, response, context_chunks);
    
    RETURN response;
END;
$$ LANGUAGE plpgsql;

-- Function for follow-up questions using the saved context
CREATE OR REPLACE FUNCTION chat_with_context(p_session_id TEXT, follow_up_query TEXT)
RETURNS TEXT AS $$
DECLARE
    saved_context TEXT;
    chat_history JSONB;
    response TEXT;
BEGIN
    -- 1. Get the most recent context and last few messages for this session
    SELECT context_used INTO saved_context 
    FROM chat_sessions WHERE session_id = p_session_id ORDER BY created_at DESC LIMIT 1;
    
    -- 2. Build a chat history by interleaving user and assistant messages
    SELECT jsonb_agg(msg) INTO chat_history FROM (
        SELECT jsonb_build_object('role', role, 'content', content) as msg
        FROM (
            SELECT 'user' as role, query_text as content, created_at FROM chat_sessions WHERE session_id = p_session_id
            UNION ALL
            SELECT 'assistant' as role, response_text as content, created_at FROM chat_sessions WHERE session_id = p_session_id
        ) sub
        ORDER BY created_at ASC
    ) t;

    -- 3. Ask Gemini for the follow-up answer using the saved context
    SELECT ai.openai_chat_complete(
        model := 'gemini-2.5-flash', 
        messages := (
            jsonb_build_array(jsonb_build_object('role', 'system', 'content', format('You are a computer sales assistant. Here is the context of the products we are discussing: %s. Use this context to answer follow-up questions.', saved_context))) 
            || chat_history 
            || jsonb_build_array(jsonb_build_object('role', 'user', 'content', follow_up_query))
        ),
        api_key := '',
        client_config := ai.openai_client_config(base_url := 'https://generativelanguage.googleapis.com/v1beta/openai/')
    )->'choices'->0->'message'->>'content' INTO response;

    -- 4. Save the follow-up
    INSERT INTO chat_sessions (session_id, query_text, response_text, context_used)
    VALUES (p_session_id, follow_up_query, response, saved_context);

    RETURN response;
END;
$$ LANGUAGE plpgsql;


-- Delete a specific session
CREATE OR REPLACE FUNCTION delete_chat_session(p_session_id TEXT)
RETURNS VOID AS $$
BEGIN
    DELETE FROM chat_sessions WHERE session_id = p_session_id;
END;
$$ LANGUAGE plpgsql;

-- Delete chats older than X hours
CREATE OR REPLACE FUNCTION clear_old_chats(hours_old INT)
RETURNS INT AS $$
DECLARE
    deleted_count INT;
BEGIN
    DELETE FROM chat_sessions 
    WHERE created_at < NOW() - (hours_old || ' hours')::INTERVAL;
    
    GET DIAGNOSTICS deleted_count = ROW_COUNT;
    RETURN deleted_count;
END;
$$ LANGUAGE plpgsql;


Select * from search_computers('Office Laptops', 3);

-- Start a session and get initial RAG response
select generate_rag_response('session_123', 'Give me AMD Ryzen laptops');

-- Continue the chat using the saved context
select chat_with_context('session_123', 'Are these laptops good for gaming?');

select delete_chat_session('session_123');