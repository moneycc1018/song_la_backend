from fastapi import APIRouter

from src.kkbox.schemas import ArtistInfo, KkboxInfo
from src.kkbox.service import query_all_artists, query_info_by_id

router = APIRouter()


@router.get("/artists", response_model=list[ArtistInfo])
def get_all_artists() -> list[ArtistInfo]:
    result = query_all_artists()

    return result


@router.get("/info", response_model=list[KkboxInfo])
def get_info_by_id(column: str, value: str) -> list[KkboxInfo]:
    result = query_info_by_id(column, value)

    return result
