from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from src.kkbox.router import router as kkbox_router
from src.ytmusic.router import router as ytmusic_router

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(kkbox_router, prefix="/kkbox")
app.include_router(ytmusic_router, prefix="/ytmusic")
