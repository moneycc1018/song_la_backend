from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column
from sqlalchemy.dialects.postgresql import VARCHAR, BOOLEAN, INTEGER


class Base(DeclarativeBase):
    def as_dict(self):
        return {e.name: getattr(self, e.name) for e in self.__table__.columns}


class Tag(Base):
    __tablename__ = "tag"

    id: Mapped[int] = mapped_column(INTEGER, primary_key=True, autoincrement=True)
    tag_name: Mapped[str] = mapped_column(VARCHAR(length=50), unique=True)
    deprecated: Mapped[bool] = mapped_column(BOOLEAN)
