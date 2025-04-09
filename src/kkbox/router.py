from fastapi import APIRouter

from src.kkbox.schemas import Kkbox, KkboxInfo, KkboxQueryInput
from src.kkbox.service import query_info_by_id, query_kkbox

router = APIRouter()


@router.get("/info", response_model=list[KkboxInfo])
def get_info_by_id(column: str, value: str) -> list[KkboxInfo]:
    result = query_info_by_id(column, value)

    return result


@router.get("/api_query", response_model=list[Kkbox])
def get_kkbox(value: str, type: str, terr: str, limit: int) -> list[Kkbox] | None:
    result = query_kkbox(value, type, terr, limit)

    return result
