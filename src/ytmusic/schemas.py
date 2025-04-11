from pydantic import BaseModel


class YtmusicInfo(BaseModel):
    video_id: str
    track_name: str
    artist_ids: list[str | None]
    artist_names: list[str | None]
    author: str
    album_id: str
    album_name: str
    release_year: str | None
    tags: list[str | None] | None
    lyrics_id: str | None
    lyrics: str | None


class YtmusicInfoInput(BaseModel):
    video_id: str
    track_name: str
    artist_ids: list[str | None]
    artist_names: list[str | None]
    author: str
    album_id: str
    album_name: str
    release_year: str | None
    lyrics_id: str | None
    lyrics: str | None


class Ytmusic(BaseModel):
    video_id: str
    track_name: str
    artist_ids: list[str | None]
    artist_names: list[str | None]
    author: str
    album_id: str
    album_name: str
    release_year: str | None
    lyrics_id: str | None
    lyrics: str | None

    artist_name: str  # 呈顯用
