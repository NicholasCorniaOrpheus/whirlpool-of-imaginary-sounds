from youtube_channel_transcript_api import YoutubeChannelTranscripts
from youtube_channel_transcript_api import YoutubePlaylistTranscripts
from youtube_transcript_api import YouTubeTranscriptApi

from pyyoutube import Api

# Documentation at https://github.com/sns-sdks/python-youtube

# Python library to interact with the YouTube Data API v3 https://github.com/danielcliu/youtube-channel-transcript-api

import json, csv
from copy import deepcopy
import time
import os
import urllib


"""
Utilities functions

"""


def json2dict(json_filename):  # imports a JSON file as dictionary
    with open(json_filename, "r") as f:
        json_file = json.load(f)
        return json_file


def dict2json(d, json_filename):  # export a dictionary to JSON file
    json_file = open(json_filename, "w")
    json.dump(d, json_file, indent=2, ensure_ascii=False)


def get_current_date():
    return time.strftime("%Y-%m-%d", time.gmtime())


def get_video_duration(
    video_id, api_key, api_base_url="https://www.googleapis.com/youtube/v3/videos?id="
):
    searchUrl = api_base_url + video_id + "&key=" + api_key + "&part=contentDetails"
    response = urllib.request.urlopen(searchUrl).read()
    data = json.loads(response)
    duration = data["items"][0]["contentDetails"]["duration"]

    return duration


"""
YouTube API functions
"""


def get_video_transcript(
    video_id, languages=["en"]
):  # Returns a dictionary of the trascript
    ytt_api = YouTubeTranscriptApi()
    fetched_transcript = ytt_api.fetch(video_id, languages=languages)
    raw_trascript = fetched_transcript.to_raw_data()

    return raw_trascript


def get_videos_from_channel(
    channel_metadata,
):  # Returns a list of transcripts for videos not belonging to specific playlist in the channel metadata
    transcripts = []
    for video in channel_metadata["selected_videos"]:
        transcripts.append(
            {
                "label": video["label"],
                "youtube_id": video["youtube_id"],
                "transcript": get_video_transcript(video["youtube_id"]),
            }
        )

    return transcripts


def get_playlist_transcripts(
    playlist_id, channel_metadata, api_key
):  # Returns a list of trascripts per video in a given playlist
    video_transcripts = []
    for playlist in channel_metadata["playlists"]:
        if playlist["youtube_id"] == playlist_id:
            for video in playlist["videos"]:
                video_transcripts.append(
                    {
                        "label": video["label"],
                        "youtube_id": video["youtube_id"],
                        "transcript": get_video_transcript(video["youtube_id"]),
                    }
                )

    return video_transcripts


def get_video_list_from_playlist(
    playlist_id, api_key
):  # Returns a list of title and videoId from YouTube API given a playlist ID
    # Initialize the API client
    api = Api(api_key=api_key)
    # Dictionary for export
    video_list = []
    # Get the playlist information
    playlist_items = api.get_playlist_items(playlist_id=playlist_id, count=None).items
    for item in playlist_items:
        video_id = item.snippet.resourceId.videoId
        video_list.append(
            {
                "label": item.snippet.title,
                "youtube_id": video_id,
                "duration": get_video_duration(video_id, api_key),
            }
        )

    return video_list


def get_channel_transcripts(
    channel_name, api_key
):  # Return channel transcription, probably with a limit of videos...
    ytt_api = YoutubeChannelTranscripts(channel_name, api_key)
    transcripts, videos_errored = ytt_api.get_transcripts()

    return transcripts


"""
CODE
"""

# Import Channel metadata from JSON

channel_metadata_filename = "kolc_content.json"

channel_metadata = json2dict(channel_metadata_filename)

# Import YouTube API key

api_key = json2dict("credentials.json")["youtube_api_key"]

# Test trascript

""" Single videos transcripts
videos_transcripts = get_videos_from_channel(channel_metadata)

dict2json(
    videos_transcripts,
    os.path.join("tmp", "videos_transcripts-" + get_current_date() + ".json"),
)

"""


# Get video ids from playlist:

for playlist in channel_metadata["playlists"]:
    playlist["videos"] = get_video_list_from_playlist(playlist["youtube_id"], api_key)


# Save changes in channel metadata

dict2json(channel_metadata, channel_metadata_filename)


""" YouTube Blocks IP after too many requests...

print("Getting transcripts for Playlists in channel metadata...")
playlists_transcripts = {}
for playlist in channel_metadata["playlists"]:
    for video in playlist["videos"]:
        print(f"Current video: {video["youtube_id"]}:")
        playlist_transcripts[playlist["youtube_id"]] = get_playlist_transcripts(
            playlist["youtube_id"], channel_metadata, api_key
        )
        dict2json(
            playlist_transcripts,
            os.path.join("tmp", "playlist_transcripts-" + get_current_date() + ".json"),
        )
        print("Waiting 10 seconds to prevent API IP block...")
        time.sleep(10)

"""
