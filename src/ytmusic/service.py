from sqlalchemy import or_, select
from src.database import fetch_model_all
from src.ytmusic.schemas import YtmusicInfo
from src.ytmusic.models import YtmusicInfo as YtmusicInfoModel


def query_info_by_id(column, value) -> list[YtmusicInfo] | None:
    value_list = value.split("!@!")

    if column == "artist_id":
        stmt = select(YtmusicInfoModel).where(
            or_(*[YtmusicInfoModel.artist_ids.contains([v]) for v in value_list])
        )
    elif column == "video_id":
        stmt = select(YtmusicInfoModel).where(YtmusicInfoModel.video_id.in_(value_list))

    return fetch_model_all(stmt)
