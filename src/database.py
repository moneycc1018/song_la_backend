from sqlalchemy import create_engine, Select, Insert, Update, CursorResult
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


# 查詢整個 model
def fetch_model_all(query: Select) -> list[dict[str, Any]]:
    with Session.begin() as session:
        result: CursorResult = session.scalars(query)
        return [r.as_dict() for r in result.all()]
