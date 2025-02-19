from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column
from sqlalchemy.dialects.postgresql import VARCHAR, JSONB


class Base(DeclarativeBase):
    pass


class KkboxInfo(Base):
    __tablename__ = "kkbox_info"

    track_id: Mapped[str] = mapped_column(VARCHAR(length=50), primary_key=True)
    track_name: Mapped[str] = mapped_column(VARCHAR(length=255))
    artist_id: Mapped[str] = mapped_column(VARCHAR(length=50))
    artist_name: Mapped[str] = mapped_column(VARCHAR(length=255))
    album_id: Mapped[str] = mapped_column(VARCHAR(length=50))
    album_name: Mapped[str] = mapped_column(VARCHAR(length=255))
    relase_date: Mapped[str] = mapped_column(VARCHAR(length=50), nullable=True)
    tags: Mapped[dict] = mapped_column(JSONB, nullable=True)
