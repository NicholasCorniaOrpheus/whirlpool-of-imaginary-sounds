import sys

sys.path.append("./modules")  # importing custom functions in modules
from modules.text import *
from modules.poetrylab import *
from modules.utilities import *

### FUNCTIONS ###


def convert_parquet_to_json():
    parquet_filename = os.path.join(
        "data", "liberliber-cleaned", "train-00002-of-00003.parquet"
    )
    json_filename = os.path.join(
        "data", "liberliber-cleaned", "train-00002-of-00003.json"
    )
    print(f"Converting {parquet_filename} to JSON...")
    convert_parquet_to_json(parquet_filename, json_filename)


### CODE ###

obsidian_path = os.path.join("data", "obsidian")

extract_yaml_and_text_from_markdown(obsidian_path)
