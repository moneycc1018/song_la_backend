from pydantic import Json
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column
from sqlalchemy.dialects.postgresql import VARCHAR, JSONB


class Base(DeclarativeBase):
    def as_dict(self):
        return {e.name: getattr(self, e.name) for e in self.__table__.columns}


class KkboxInfo(Base):
    __tablename__ = "kkbox_info"

    track_id: Mapped[str] = mapped_column(VARCHAR(length=50), primary_key=True)
    track_name: Mapped[str] = mapped_column(VARCHAR(length=255))
    artist_id: Mapped[str] = mapped_column(VARCHAR(length=50))
    artist_name: Mapped[str] = mapped_column(VARCHAR(length=255))
    album_id: Mapped[str] = mapped_column(VARCHAR(length=50))
    album_name: Mapped[str] = mapped_column(VARCHAR(length=255))
    release_date: Mapped[str] = mapped_column(VARCHAR(length=50), nullable=True)
    tags: Mapped[list[int]] = mapped_column(JSONB, nullable=True)
