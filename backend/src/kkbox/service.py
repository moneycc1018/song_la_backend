import http.client
import json
from urllib.parse import urlencode
from sqlalchemy import insert, select, delete, update
from src import config
from src.database import crud_model_all, crud_model_one
from src.kkbox.schemas import Kkbox, KkboxInfo, KkboxInfoInput, TagsInput
from src.kkbox.models import KkboxInfo as KkboxInfoModel
from kkbox_developer_sdk.auth_flow import KKBOXOAuth


def query_info_by_id(column, value) -> list[KkboxInfo] | None:
    value_list = value.split("!@!")

    if column == "artist_id":
        stmt = select(KkboxInfoModel).where(KkboxInfoModel.artist_id.in_(value_list))
    elif column == "track_id":
        stmt = select(KkboxInfoModel).where(KkboxInfoModel.track_id.in_(value_list))

    return crud_model_all(stmt)


def insert_info(input: list[KkboxInfoInput]) -> list[KkboxInfo]:
    input_list = list()
    for data in input:
        input_dict = dict()
        input_dict["track_id"] = data.track_id
        input_dict["track_name"] = data.track_name
        input_dict["artist_id"] = data.artist_id
        input_dict["artist_name"] = data.artist_name
        input_dict["album_id"] = data.album_id
        input_dict["album_name"] = data.album_name
        input_dict["release_date"] = data.release_date

        input_list.append(input_dict)

    stmt = insert(KkboxInfoModel).values(input_list).returning(KkboxInfoModel)

    return crud_model_all(stmt)


def delete_info_by_id(track_ids_str) -> list[KkboxInfo]:
    track_id_list = track_ids_str.split("!@!")

    stmt = (
        delete(KkboxInfoModel)
        .where(KkboxInfoModel.track_id.in_(track_id_list))
        .returning(KkboxInfoModel)
    )

    return crud_model_all(stmt)


def update_tags_by_id(track_id, input: TagsInput) -> KkboxInfo:
    stmt = (
        update(KkboxInfoModel)
        .where(KkboxInfoModel.track_id == track_id)
        .values({"tags": input.tags})
        .returning(KkboxInfoModel)
    )

    return crud_model_one(stmt)


def get_token():
    auth = KKBOXOAuth(
        client_id=config.KKBOX_CLIENT_ID, client_secret=config.KKBOX_CLIENT_SECRET
    )
    token = auth.fetch_access_token_by_client_credentials()

    return token


def query_by_kkbox_api(
    value: str, type: str, terr: str, limit: int
) -> list[Kkbox] | None:
    try:
        conn = http.client.HTTPSConnection("api.kkbox.com")
        token = get_token()

        headers = {
            "accept": "application/json",
            "authorization": f"Bearer {token.access_token}",
        }

        query_content = urlencode({"q": value})
        url = f"/v1.1/search?{query_content}&type={type}&territory={terr}&offset=0&limit={limit}"

        conn.request("GET", url, headers=headers)
        res = conn.getresponse()
        data = res.read()
        handled_data = json.loads(data.decode("utf-8"))["tracks"]["data"]

        return_list = list()
        for data in handled_data:
            return_dict = dict()
            return_dict["track_id"] = data["id"]
            return_dict["track_name"] = data["name"]
            return_dict["artist_id"] = data["album"]["artist"]["id"]
            return_dict["artist_name"] = data["album"]["artist"]["name"]
            return_dict["album_id"] = data["album"]["id"]
            return_dict["album_name"] = data["album"]["name"]
            return_dict["release_date"] = data["album"]["release_date"].replace("-", "")

            return_list.append(Json2Object(return_dict))
    finally:
        conn.close()

    return return_list


class Json2Object:
    def __init__(self, d=None):
        if d is not None:
            for key, value in d.items():
                setattr(self, key, value)
