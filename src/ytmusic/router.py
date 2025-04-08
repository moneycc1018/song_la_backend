from fastapi import APIRouter, Query

from src.ytmusic.schemas import YtmusicInfo
from src.ytmusic.service import query_info_by_id

router = APIRouter()


@router.get("/info", response_model=list[YtmusicInfo])
def get_info_by_id(column: str, value: str) -> list[YtmusicInfo]:
    result = query_info_by_id(column, value)

    return result
