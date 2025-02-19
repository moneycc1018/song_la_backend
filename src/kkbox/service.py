from sqlalchemy import select
from src.database import fetch_all
from src.kkbox.schemas import ArtistInfo
from src.kkbox.models import KkboxInfo as KkboxInfoModel


def query_all_artists() -> list[ArtistInfo] | None:
    stmt = (
        select(KkboxInfoModel.artist_id, KkboxInfoModel.artist_name)
        .group_by(KkboxInfoModel.artist_id)
        .group_by(KkboxInfoModel.artist_name)
    )

    return fetch_all(stmt)
