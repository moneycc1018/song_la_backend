from sqlalchemy import insert, or_, select, delete
from ytmusicapi import YTMusic, OAuthCredentials
from src import config
from src.database import crud_model_all
from src.ytmusic.schemas import YtmusicInfo, YtmusicInfoInput
from src.ytmusic.models import YtmusicInfo as YtmusicInfoModel


def query_info_by_id(column, value) -> list[YtmusicInfo] | None:
    value_list = value.split("!@!")

    if column == "artist_id":
        stmt = select(YtmusicInfoModel).where(
            or_(*[YtmusicInfoModel.artist_ids.contains([v]) for v in value_list])
        )
    elif column == "video_id":
        stmt = select(YtmusicInfoModel).where(YtmusicInfoModel.video_id.in_(value_list))

    return crud_model_all(stmt)


def insert_info(input: list[YtmusicInfoInput]) -> list[YtmusicInfo]:
    input_list = list()
    print(input)
    for data in input:
        input_dict = dict()
        input_dict["video_id"] = data.video_id
        input_dict["track_name"] = data.track_name
        input_dict["artist_ids"] = data.artist_ids
        input_dict["artist_names"] = data.artist_names
        input_dict["author"] = data.author
        input_dict["album_id"] = data.album_id
        input_dict["album_name"] = data.album_name
        input_dict["release_year"] = data.release_year
        input_dict["lyrics_id"] = data.lyrics_id
        input_dict["lyrics"] = data.lyrics

        input_list.append(input_dict)

    stmt = insert(YtmusicInfoModel).values(input_list).returning(YtmusicInfoModel)

    return crud_model_all(stmt)


def delete_info_by_id(video_ids_str) -> list[YtmusicInfo]:
    video_id_list = video_ids_str.split("!@!")

    stmt = (
        delete(YtmusicInfoModel)
        .where(YtmusicInfoModel.video_id.in_(video_id_list))
        .returning(YtmusicInfoModel)
    )

    return crud_model_all(stmt)


ytmusic = YTMusic(
    "oauth.json",
    oauth_credentials=OAuthCredentials(
        client_id=config.YTMUSIC_CLIENT_ID, client_secret=config.YTMUSIC_CLIENT_SECRET
    ),
)


def query_by_ytmusic_api(value) -> list[YtmusicInfo] | None:
    result = ytmusic.search(query=value, filter="songs")

    return_list = list()
    for data in result[0:10]:
        return_dict = dict()

        video_id = data["videoId"]
        return_dict["video_id"] = video_id
        return_dict["track_name"] = data["title"]

        artist_ids = list()
        artist_names = list()
        for artist in data["artists"]:
            artist_ids.append(artist["id"])
            artist_names.append(artist["name"])

        return_dict["artist_ids"] = artist_ids
        return_dict["artist_names"] = artist_names

        album_id = data["album"]["id"]
        return_dict["album_id"] = album_id
        return_dict["album_name"] = data["album"]["name"]

        # 查詢歌曲資訊
        song = ytmusic.get_song(video_id)
        author = song["videoDetails"]["author"]
        return_dict["author"] = author
        return_dict["artist_name"] = author  # 呈顯用

        # 查詢專輯資訊
        album = ytmusic.get_album(album_id)
        return_dict["release_year"] = album["year"]

        # 查詢歌詞
        lyrics_id = ytmusic.get_watch_playlist(video_id)["lyrics"]
        if lyrics_id != None:
            lyrics = ytmusic.get_lyrics(lyrics_id)["lyrics"]
            return_dict["lyrics_id"] = lyrics_id
            return_dict["lyrics"] = lyrics
        else:
            return_dict["lyrics_id"] = None
            return_dict["lyrics"] = None

        return_list.append(Json2Object(return_dict))

    return return_list


class Json2Object:
    def __init__(self, d=None):
        if d is not None:
            for key, value in d.items():
                setattr(self, key, value)
