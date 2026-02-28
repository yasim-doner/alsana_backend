import pgai
import os
from dotenv import load_dotenv
import psycopg
import time


load_dotenv()
DB_URL = os.getenv('DB_URL')

print("Starting pgai setup...")

# Install pgai components into database
print("Installing pgai extension...")
pgai.install(DB_URL)
print("✓ pgai installed successfully!")