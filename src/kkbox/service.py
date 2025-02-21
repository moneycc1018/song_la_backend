from sqlalchemy import select
from src.database import fetch_all, fetch_model_all
from src.kkbox.schemas import ArtistInfo, KkboxInfo
from src.kkbox.models import KkboxInfo as KkboxInfoModel


def query_all_artists() -> list[ArtistInfo] | None:
    stmt = (
        select(KkboxInfoModel.artist_id, KkboxInfoModel.artist_name)
        .group_by(KkboxInfoModel.artist_id)
        .group_by(KkboxInfoModel.artist_name)
    )

    return fetch_all(stmt)


def query_info_by_id(column, value) -> list[KkboxInfo] | None:
    value_list = value.split("!@!")

    if column == "artist_id":
        stmt = select(KkboxInfoModel).where(KkboxInfoModel.artist_id.in_(value_list))
    elif column == "track_id":
        stmt = select(KkboxInfoModel).where(KkboxInfoModel.track_id.in_(value_list))

    return fetch_model_all(stmt)
