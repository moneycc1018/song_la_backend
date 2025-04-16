from pydantic import Json
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column
from sqlalchemy.dialects.postgresql import VARCHAR, JSONB, TEXT


class Base(DeclarativeBase):
    def as_dict(self):
        return {e.name: getattr(self, e.name) for e in self.__table__.columns}


class YtmusicInfo(Base):
    __tablename__ = "ytmusic_info"

    video_id: Mapped[str] = mapped_column(VARCHAR(length=50), primary_key=True)
    track_name: Mapped[str] = mapped_column(VARCHAR(length=255))
    artist_ids: Mapped[Json] = mapped_column(JSONB)
    artist_names: Mapped[Json] = mapped_column(JSONB)
    author: Mapped[str] = mapped_column(VARCHAR(length=255))
    album_id: Mapped[str] = mapped_column(VARCHAR(length=50))
    album_name: Mapped[str] = mapped_column(VARCHAR(length=255))
    release_year: Mapped[str] = mapped_column(VARCHAR(length=50), nullable=True)
    tags: Mapped[Json] = mapped_column(JSONB, nullable=True)
    lyrics_id: Mapped[str] = mapped_column(VARCHAR(length=50), nullable=True)
    lyrics: Mapped[str] = mapped_column(TEXT, nullable=True)
