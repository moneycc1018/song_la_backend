from sqlalchemy import Delete, create_engine, Select, Insert, Update, CursorResult
from sqlalchemy.orm import sessionmaker
from typing import Any
from src import config

engine = create_engine(config.DATABASE_URL)
Session = sessionmaker(engine)


def fetch_one(query: Select | Insert | Update) -> dict[str, Any] | None:
    with Session.begin() as session:
        result: CursorResult = session.execute(query)
        return result.first()


# 查詢單一欄位值
def fetch_all(query: Select) -> list[dict[str, Any]]:
    with Session.begin() as session:
        result: CursorResult = session.execute(query)
        return [r._asdict() for r in result.all()]


# 查詢整個 model (單列)
def crud_model_one(action: Select | Insert | Update | Delete) -> dict[str, Any] | None:
    with Session.begin() as session:
        result: CursorResult = session.scalar(action)
        return result.as_dict() if result else None


# 查詢整個 model (多列)
def crud_model_all(action: Select | Insert | Update | Delete) -> list[dict[str, Any]]:
    with Session.begin() as session:
        result: CursorResult = session.scalars(action)
        return [r.as_dict() for r in result.all()]
