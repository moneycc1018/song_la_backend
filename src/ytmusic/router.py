from fastapi import APIRouter

from src.ytmusic.schemas import TagsInput, YtmusicInfo, Ytmusic, YtmusicInfoInput
from src.ytmusic.service import (
    delete_info_by_id,
    insert_info,
    query_by_ytmusic_api,
    query_info_by_id,
    update_tags_by_id,
)

router = APIRouter()


@router.get("/info", response_model=list[YtmusicInfo])
def get_info(column: str, value: str) -> list[YtmusicInfo]:
    return query_info_by_id(column, value)


@router.post("/info/add", response_model=list[YtmusicInfo])
def add_info(input: list[YtmusicInfoInput]) -> list[YtmusicInfo]:
    return insert_info(input)


@router.delete("/info/delete", response_model=list[YtmusicInfo])
def delete_info(video_ids_str: str) -> list[YtmusicInfo]:
    return delete_info_by_id(video_ids_str)


@router.put("/tags/update", response_model=YtmusicInfo)
def update_tags(video_id: str, input: TagsInput) -> YtmusicInfo:
    return update_tags_by_id(video_id, input)


@router.get("/api_query", response_model=list[Ytmusic])
def get_kkbox(value: str) -> list[Ytmusic] | None:
    return query_by_ytmusic_api(value)
