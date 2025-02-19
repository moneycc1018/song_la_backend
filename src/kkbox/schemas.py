from pydantic import BaseModel, Json


class ArtistInfo(BaseModel):
    artist_id: str
    artist_name: str


class KkboxInfo(BaseModel):
    track_id: str
    track_name: str
    artist_id: str
    artist_name: str
    album_id: str
    album_name: str
    release_date: str | None
    tags: Json
