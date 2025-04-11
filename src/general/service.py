from src.database import crud_model_one
from src.general.schemas import Tag, TagInput
from src.general.models import Tag as TagModel
from sqlalchemy import update, select
from sqlalchemy.dialects.postgresql import insert


def upsert_tag(input: TagInput) -> Tag:
    select_stmt = select(TagModel).where(TagModel.tag_name == input.tag_name)
    select_result = crud_model_one(select_stmt)

    if select_result:
        stmt = (
            update(TagModel)
            .where(TagModel.tag_name == input.tag_name)
            .values({"deprecated": False})
            .returning(TagModel)
        )
    else:
        stmt = insert(TagModel).values({"tag_name": input.tag_name}).returning(TagModel)

    return crud_model_one(stmt)


def delete_tag_by_id(id) -> Tag:
    stmt = (
        update(TagModel)
        .where(TagModel.id == id)
        .values({"deprecated": True})
        .returning(TagModel)
    )

    return crud_model_one(stmt)


def update_tag_by_id(id, input: TagInput) -> Tag:
    stmt = (
        update(TagModel)
        .where(TagModel.id == id)
        .values({"tag_name": input.tag_name})
        .returning(TagModel)
    )

    return crud_model_one(stmt)
