from fastapi import APIRouter

from src.ytmusic.schemas import YtmusicInfo, Ytmusic
from src.ytmusic.service import query_by_ytmusic_api, query_info_by_id

router = APIRouter()


@router.get("/info", response_model=list[YtmusicInfo])
def get_info(column: str, value: str) -> list[YtmusicInfo]:
    return query_info_by_id(column, value)


# @router.delete("/info/delete", response_model=list[YtmusicInfo])
# def delete_info(value: str) -> list[YtmusicInfo]:

#     return delete_info_by_id(value)


@router.get("/api_query", response_model=list[Ytmusic])
def get_kkbox(value: str) -> list[Ytmusic] | None:
    return query_by_ytmusic_api(value)
