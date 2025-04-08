from fastapi import APIRouter

from src.kkbox.schemas import KkboxInfo
from src.kkbox.service import query_info_by_id

router = APIRouter()


@router.get("/info", response_model=list[KkboxInfo])
def get_info_by_id(column: str, value: str) -> list[KkboxInfo]:
    result = query_info_by_id(column, value)

    return result
