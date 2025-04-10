from sqlalchemy import or_, select, delete
from ytmusicapi import YTMusic, OAuthCredentials
from src import config
from src.database import crud_model_all
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

    return crud_model_all(stmt)


def delete_info_by_id(value) -> list[YtmusicInfo]:
    value_list = value.split("!@!")

    stmt = (
        delete(YtmusicInfoModel)
        .where(YtmusicInfoModel.video_id.in_(value_list))
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
    for data in result[0:1]:
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
        return_dict["author"] = song["videoDetails"]["author"]

        print(song)

        # 查詢專輯資訊
        album = ytmusic.get_album(album_id)
        return_dict["release_year"] = album["year"]

        print(album)

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
