from fastapi import APIRouter

from src.kkbox.schemas import Kkbox, KkboxInfo, KkboxInfoInput
from src.kkbox.service import (
    delete_info_by_id,
    insert_info,
    query_info_by_id,
    query_by_kkbox_api,
)

router = APIRouter()


@router.get("/info", response_model=list[KkboxInfo])
def get_info(column: str, value: str) -> list[KkboxInfo]:
    return query_info_by_id(column, value)


@router.post("/info/add", response_model=list[KkboxInfo])
def add_info(input: list[KkboxInfoInput]) -> list[KkboxInfo]:
    return insert_info(input)


@router.delete("/info/delete", response_model=list[KkboxInfo])
def delete_info(value: str) -> list[KkboxInfo]:

    return delete_info_by_id(value)


@router.get("/api_query", response_model=list[Kkbox])
def get_kkbox(value: str, type: str, terr: str, limit: int) -> list[Kkbox] | None:
    return query_by_kkbox_api(value, type, terr, limit)
