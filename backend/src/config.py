import os
from dotenv import load_dotenv

load_dotenv()

DATABASE_URL = os.getenv("DATABASE_URL")

KKBOX_CLIENT_ID = os.getenv("KKBOX_CLIENT_ID")
KKBOX_CLIENT_SECRET = os.getenv("KKBOX_CLIENT_SECRET")

YTMUSIC_CLIENT_ID = os.getenv("YTMUSIC_CLIENT_ID")
YTMUSIC_CLIENT_SECRET = os.getenv("YTMUSIC_CLIENT_SECRET")
