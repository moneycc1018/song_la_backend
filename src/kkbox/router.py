from fastapi import APIRouter

from src.kkbox.schemas import ArtistInfo
from src.kkbox.service import query_all_artists

router = APIRouter()


@router.get("/artists", response_model=list[ArtistInfo])
def get_all_artists() -> list[ArtistInfo]:
    result = query_all_artists()

    return result
