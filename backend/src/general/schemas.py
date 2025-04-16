from pydantic import BaseModel


class Tag(BaseModel):
    id: int
    tag_name: str
    deprecated: bool


class TagInput(BaseModel):
    tag_name: str
