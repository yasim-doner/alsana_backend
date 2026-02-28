import subprocess
import os
from dotenv import load_dotenv
import sys
import asyncio

load_dotenv()
DB_URL = os.getenv('DB_URL')

if sys.platform == "win32":
    asyncio.set_event_loop_policy(asyncio.WindowsSelectorEventLoopPolicy())

if not DB_URL:
    print("Error: DB_URL environment variable not set")
    sys.exit(1)

print(f"Starting pgai vectorizer worker...")
print(f"Database: {DB_URL}")
print("Processing embeddings from queue...")
print("Press Ctrl+C to stop\n")

try:
    # Run the pgai vectorizer worker CLI command
    subprocess.run(
        ["pgai", "vectorizer", "worker", "-d", DB_URL],
        check=False
    )
except KeyboardInterrupt:
    print("\nVectorizer worker stopped")
    sys.exit(0)
except FileNotFoundError:
    print("Error: pgai command not found")
    print("Make sure pgai is installed: pip install pgai")
    sys.exit(1)