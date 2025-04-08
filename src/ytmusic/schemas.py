from pydantic import BaseModel, Json


class YtmusicInfo(BaseModel):
    video_id: str
    track_name: str
    artist_ids: list[str]
    artist_names: list[str]
    author: str
    album_id: str
    album_name: str
    release_year: str | None
    tags: Json | None
    lyrics_id: str | None
    lyrics: str | None
