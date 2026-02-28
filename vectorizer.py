import os
from dotenv import load_dotenv
from pgai import Worker
import sys
import asyncio

import psycopg

load_dotenv()
DB_URL = os.getenv('DB_URL')

async def create_vectorizer(conn: psycopg.AsyncConnection):
    async with conn.cursor() as cur:    
        await cur.execute("""
            SELECT ai.create_vectorizer(
                'wiki'::regclass,
                if_not_exists => true,
                loading => ai.loading_column(column_name=>'text'),
                embedding => ai.embedding_openai(model=>'text-embedding-ada-002', dimensions=>'1536'),
                destination => ai.destination_table(view_name=>'wiki_embedding')
            )
        """)   
    await conn.commit()

worker = Worker(db_url=DB_URL)
task = asyncio.create_task(worker.run())