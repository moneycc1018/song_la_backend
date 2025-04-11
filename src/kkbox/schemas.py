from pydantic import BaseModel


class KkboxInfo(BaseModel):
    track_id: str
    track_name: str
    artist_id: str
    artist_name: str
    album_id: str
    album_name: str
    release_date: str | None
    tags: list[str | None] | None


class KkboxInfoInput(BaseModel):
    track_id: str
    track_name: str
    artist_id: str
    artist_name: str
    album_id: str
    album_name: str
    release_date: str | None


class Kkbox(BaseModel):
    track_id: str
    track_name: str
    artist_id: str
    artist_name: str
    album_id: str
    album_name: str
    release_date: str | None
