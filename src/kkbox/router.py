from fastapi import APIRouter

from src.kkbox.schemas import Kkbox, KkboxInfo, KkboxInfoInput, TagsInput
from src.kkbox.service import (
    delete_info_by_id,
    insert_info,
    query_info_by_id,
    query_by_kkbox_api,
    update_tags_by_id,
)

router = APIRouter()


@router.get("/info", response_model=list[KkboxInfo])
def get_info(column: str, value: str) -> list[KkboxInfo]:
    return query_info_by_id(column, value)


@router.post("/info/add", response_model=list[KkboxInfo])
def add_info(input: list[KkboxInfoInput]) -> list[KkboxInfo]:
    return insert_info(input)


@router.delete("/info/delete", response_model=list[KkboxInfo])
def delete_info(track_ids_str: str) -> list[KkboxInfo]:

    return delete_info_by_id(track_ids_str)


@router.put("/tags/update", response_model=KkboxInfo)
def update_tags(track_id: str, input: TagsInput) -> KkboxInfo:
    return update_tags_by_id(track_id, input)


@router.get("/api_query", response_model=list[Kkbox])
def get_kkbox(value: str, type: str, terr: str, limit: int) -> list[Kkbox] | None:
    return query_by_kkbox_api(value, type, terr, limit)
