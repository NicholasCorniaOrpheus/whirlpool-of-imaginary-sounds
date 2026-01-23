import sys

sys.path.append("./modules")

from modules.youtube import *
from modules.utilities import *
from modules.nlp import *

### FUNCTIONS ###


def youtube_channel_videos_metadata(resource_dictionary, resource_name):
    channel_name = resource_dictionary["youtube_channel"]["label"]

    print(f"Getting all video metadata from channel {channel_name}")
    resource_dictionary["youtube_channel"]["videos"] = get_channel_video_list(
        channel_name
    )
    print("Updating resource JSON metadata...")
    dict2json(resource_dictionary, os.path.join(resource_name, resource_name + ".json"))

    return resource_dictionary


def youtube_playlists_metadata(resource_dictionary, resource_name):
    # Get all playlists from channel
    print(f"Getting all playlist metadata from channel {resource_dictionary["youtube_channel"]["label"]}")
    playlists_list = get_channel_playlist_list(
        resource_dictionary["youtube_channel"]["label"]
    )

    resource_dictionary["youtube_channel"]["playlists"] = playlists_list

    print("Updating resource JSON metadata...")
    dict2json(resource_dictionary, os.path.join(resource_name, resource_name + ".json"))

    return resource_dictionary


def retrieve_playlists_from_videos(
    resource_dictionary, resource_name
):  # Associates the right playlist to the video metadata "part_of_playlists"
    print("Retrieving playlist metadata for each video in channel...")
    for video in resource_dictionary["youtube_channel"]["videos"]:
        #print(f"Current video: {video["youtube_id"]}")
        # Check if video is part of any playlist
        for playlist in resource_dictionary["youtube_channel"]["playlists"]:
            #print(f"Current playlist: {playlist["youtube_id"]}")
            video_query = list(
                filter(
                    lambda x: x["youtube_id"] == video["youtube_id"], playlist["videos"]
                )
            )

            if len(video_query) > 0:
                video["part_of_playlists"].append(playlist["youtube_id"])


    print("Updating resource JSON metadata...")
    dict2json(resource_dictionary, os.path.join(resource_name, resource_name + ".json"))


    return resource_dictionary

def get_resources_metadata(resources_to_be_processed):
    for directory in os.scandir("./"):
        if directory.name in resources_to_be_processed:
            start_time = time.time()
            # Load resource information
            resource_name = directory.name
            print(f"Current resource: {resource_name}:")
            resource_dictionary = json2dict(os.path.join(directory.path,resource_name+".json"))
            print("Getting videos metadata from channel...")
            resource_dictionary = youtube_channel_videos_metadata(resource_dictionary, resource_name)
            print("Getting playlists metadata...")
            resource_dictionary = youtube_playlists_metadata(resource_dictionary, resource_name)
            print("Assigning videos to playlists...")
            resource_dictionary = retrieve_playlists_from_videos(resource_dictionary, resource_name)

            print(f"Resource processed in {time.time() - start_time} seconds.")

        
def import_resources_youtube_video_subtitles(resources_to_be_processed):

    for directory in os.scandir("./"):
        if directory.name in resources_to_be_processed:
            start_time = time.time()
            # Load resource information
            resource_name = directory.name
            print(f"Current resource: {resource_name}:")
            resource_dictionary = json2dict(os.path.join(directory.path,resource_name+".json"))
            for video in resource_dictionary["youtube_channel"]["videos"]:
                # Extract trascript dictionary 
                print(f"Current video: {video["label"]}")
                #if "transcripts" not in video.keys():
                transcripts = get_video_subtitles(video["youtube_id"])
                # Create subdirectory if not present
                if not os.path.exists(os.path.join(directory.path,"youtube")):
                    os.makedirs(os.path.join(directory.path,"youtube"))
                    os.makedirs(os.path.join(directory.path,"youtube","automatic_transcripts"))  
                print("Save transcripts in JSON and TXT format...")
                transcripts_path = os.path.join(directory.path,"youtube","automatic_transcripts")  
                # Save trascript in separate JSON, providing only relative path
                dict2json(transcripts,os.path.join(transcripts_path,f"{video["youtube_id"]}.json"))
                # Save transcript as TXT file
                text_file = open(os.path.join(transcripts_path,f"{video["youtube_id"]}.txt"),'w')
                text_file.write(transcripts["full_text"])
                text_file.close()

                # Save metadata position 
                video["transcripts"] = {"json": os.path.join(transcripts_path,f"{video["youtube_id"]}.json"),
                    "txt": os.path.join(transcripts_path,f"{video["youtube_id"]}.txt")  } 

            print(f"Resource processed in {time.time() - start_time} seconds.")

            print("Updating resource JSON metadata...")
            dict2json(resource_dictionary, os.path.join(resource_name, resource_name + ".json"))





# TO DO #

"""
- NLP analysis of automatic transcriptions
- named entity recognition based on thesaurus of topics (Obsidian)

"""


### TESTING ###

#print("Importing JSON content of resource...")
#kolc_content = json2dict(os.path.join("knights_of_last_call", "knights_of_last_call.json"))


def test_automatic_subtitles_import():
    # Use the first video from selected_videos

    test_video = kolc_content["youtube_channel"]["selected_videos"][0]

    transcript = get_video_subtitles(test_video["youtube_id"])

    dict2json(
        transcript["subtitles"],
        os.path.join("tmp", test_video["label"] + "_automatic_subtitles.json"),
    )

    # Save full text in TXT file
    txt_file = open(
        os.path.join("tmp", test_video["label"] + "_automatic_subtitles.txt"), "w"
    )
    txt_file.write(transcript["full_text"])


def test_video_audio_import():
    test_video = kolc_content["youtube_channel"]["selected_videos"][0]

    get_video_audio(test_video["youtube_id"], output_path="./tmp")


def test_automatic_summary():  # NOT WORKING, we need first to tokenize the big text into smaller section (depending on model. See Copilot suggestions.)
    test_text_filename = os.path.join(
        "tmp",
        "Legend of the Five Rings 5E - System Overview and Mechanics Discussion! - Livestream #24_automatic_subtitles.txt",
    )

    text_file = open(test_text_filename, "r")
    text_lines = text_file.readlines()
    text_string = "".join(text_lines)

    print("Summarizing text using LLM model...")
    summary = summarize_text(text_string)
    print(summary)

    print("Saving result in same directory of the original file...")
    summary_text_filename = test_text_filename.replace(
        "_automatic_subtitles", "_automatic_summary"
    )
    summary_text_file = open(summary_text_filename, "w")

    summary_text_file.write(summary)

    summary_text_file.close()

### TESTING ###

test_text_filename = open(os.path.join("knights_of_last_call","youtube","automatic_transcripts","-8AIJHNlyDA.txt"))

text = test_text_filename.read()

dict2json(text_sentencer(text),os.path.join("tmp","sentencer_test.jons"))


### CODE ###


#resources_to_be_processed = ["knights_of_last_call"]

#resources_to_be_processed = ["dave_thaumavore","dice_in_mind","me_myself_and_die","quinns_quest","the_alexandrian"]

#import_resources_youtube_video_subtitles(resources_to_be_processed)

#get_resources_metadata(resources_to_be_processed)

#youtube_playlists_metadata(kolc_content, "knights_of_last_call")

#retrieve_playlists_from_videos(kolc_content, "knights_of_last_call")

# Testing NLP tokenization

channel_name = "knights_of_last_call"

lemma_frequency_analysis()

print("Check texts_pipe_tokenization_from_directory. Include first stop words and \\n removal...")
#texts_pipe_tokenization_from_directory(os.path.join(channel_name,"youtube","automatic_transcripts"))


