from fastapi import APIRouter

from src.general.schemas import Tag, TagInput
from src.general.service import delete_tag_by_id, update_tag_by_id, upsert_tag

router = APIRouter()


@router.post("/tag/add", response_model=Tag)
def add_tag(input: TagInput) -> Tag:
    return upsert_tag(input)


@router.delete("/tag/delete", response_model=Tag)
def delete_tag(id: int) -> Tag:
    return delete_tag_by_id(id)


@router.put("/tag/update", response_model=Tag)
def update_tag(id: int, input: TagInput) -> Tag:
    return update_tag_by_id(id, input)
