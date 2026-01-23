# Scripts to interact with the YouTube API

import sys

sys.path.append("./modules")

from modules.utilities import *


from pytubefix import YouTube
from pytubefix import Playlist
from pytubefix import Channel
from pytubefix.cli import on_progress

import urllib


### CREDENTIALS ###

credentials = json2dict("../credentials/credentials.json")

youtube_api_key = credentials["youtube_api_key"]

youtube_video_url = "https://www.youtube.com/watch?v="

youtube_playlist_url = "https://www.youtube.com/playlist?list="

youtube_base_url = "https://www.youtube.com/"


def convert_seconds_to_ISO_8601_PT(seconds):
    seconds_in_hour = 60 * 60
    seconds_in_minute = 60
    # calculate number of hours
    # floor division, rounded down
    hours = seconds // seconds_in_hour
    # modulo operation
    rest_m = seconds % seconds_in_hour
    minutes = rest_m // seconds_in_minute
    rest_s = rest_m % seconds_in_minute

    if hours > 0:
        return f"PT{hours}H{minutes}M{rest_s}S"
    elif minutes > 0:
        return f"PT{minutes}M{rest_s}S"
    else:
        return f"PT{rest_s}S"


def get_channel_video_list(channel_name, youtube_base_url=youtube_base_url):
    c = Channel(f"{youtube_base_url}/{channel_name}/videos")

    channel_videos = c.videos
    # format the videos information according to custom JSON formatting used in the project
    # label = title, youtube_id = videoId description = description

    videos = []
    for video in channel_videos:
        videos.append(get_video_metadata(video.video_id))

    return videos


def get_channel_playlist_list(channel_name, youtube_base_url=youtube_base_url):
    c = Channel(f"{youtube_base_url}/{channel_name}/videos")

    playlists_list = c.playlists

    # Parse metadata according to dictionary content JSON
    playlists = []
    for playlist in playlists_list:
        playlists.append(
            {
                "label": playlist.title,
                "youtube_id": playlist.playlist_id,
                "videos": [
                    {"label": video.title, "youtube_id": video.video_id}
                    for video in playlist.videos
                ],
            }
        )

    return playlists


def get_video_duration(
    video_id,
    api_key=youtube_api_key,
    api_base_url="https://www.googleapis.com/youtube/v3/videos?id=",
):
    searchUrl = api_base_url + video_id + "&key=" + api_key + "&part=contentDetails"
    response = urllib.request.urlopen(searchUrl).read()
    data = json.loads(response)
    duration = data["items"][0]["contentDetails"]["duration"]

    return duration


def get_video_metadata(video_id, youtube_video_url=youtube_video_url):
    video = YouTube(youtube_video_url + video_id)
    try:
        title = video.title
        description = video.description
        youtube_id = video.video_id
        keywords = video.keywords

        duration = convert_seconds_to_ISO_8601_PT(video.length)

        metadata = {
            "label": title,
            "youtube_id": youtube_id,
            "part_of_playlists": [],
            "description": description,
            "keywords": keywords,
            "duration": duration,
            "analysis": {
                "abstract": "",
                "topics": [],
                "agents": [],
                "artefacts": [],
                "concepts": [],
            },
        }
    except Exception:
        metadata = {"label": title, "youtube_id": youtube_id, "part_of_playlists": []}

    return metadata


def get_playlist_subtitles(
    playlist_id, youtube_playlist_url=youtube_playlist_url
):  # TO BE CONTINUED
    pass


def get_video_subtitles(video_id, youtube_video_url=youtube_video_url):
    yt = YouTube(youtube_video_url + video_id)
    captions = yt.captions
    try:
        english_subtitles = captions["a.en"]
        raw_subtitles = english_subtitles.generate_srt_captions()
        # Convert raw subtitles to a list of dictionaries
        transcript = {}
        subtitles = []
        full_text = ""
        for line in raw_subtitles.split("\n\n"):
            if line.strip():
                parts = line.split("\n")
                if len(parts) >= 3:
                    time_range = parts[1]
                    start_time, end_time = time_range.split(" --> ")
                    text = " ".join(parts[2:])
                    subtitles.append(
                        {
                            "start_time": start_time,
                            "end_time": end_time,
                            "text": text,
                        }
                    )
                    full_text += text + "\n"

        transcript = {"subtitles": subtitles, "full_text": full_text}
    except Exception:
        print(f"Failed to get automatic transcript for video {video_id}")
        transcript = {"subtitles": [], "full_text": ""}

    return transcript


def get_video_audio(video_id, output_path, youtube_video_url=youtube_video_url):
    yt = YouTube(youtube_video_url + video_id)
    ys = yt.streams.get_audio_only()
    print(f"Downloading audio of {yt.title}...")
    ys.download(output_path=output_path, filename=f"{yt.title}.m4a")
