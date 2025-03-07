"""
Core functions of the model
"""

import os
import random
from .conversions import *
import sys

sys.path.append("./modules")  # importing custom functions in modules

test_schema = {
    "label": "empio_tuo_strale_opening",
    "n_voices": 4,
    "mode": "ionian",
    "hexachord": "naturalis",
    "voices": [
        {"name": "basso", "sequence": r"g1 e1 c1 c'1 c'1 g1 c'1"},
        {"name": "tenor", "sequence": r"g1 c'1 e'1 g'1 e'1 d'1 c'1"},
        {"name": "alto", "sequence": r"r\breve g'1 e1 c2 c'2 b'1 c'1"},
        {"name": "canto", "sequence": r"r\breve g'1 c''1 e''1 g''1 e''1"},
    ],
}

test_realization = {
    "id": "sequence_id" + "_idvalue",
    "label": "sequence_label_+id",
    "n_voices": 4,
    "mode": "ionian",
    "hexachord": "naturalis",
    "voices": [
        {"name": "basso", "sequence": r"g1 e2 d2 c4 c4 c'2. b4 b4 a8 b8 c'1 g1 c'1"},
        {
            "name": "tenor",
            "sequence": r"r2 g2 c'2 d'2 e'2. f'4 g'2 g'2 e'2. d'8 c'8 d'1 c'1",
        },
        {
            "name": "alto",
            "sequence": r"r\breve g'1 e'2 d'2 c'4 c'4 c''2. b'4 b'4 a'8 b'8 c'2 g'2",
        },
        {
            "name": "canto",
            "sequence": r"r\breve r2 g'2 c''2 d''2 e''2. f''4 g''2 g''2 e''1",
        },
    ],
    "density": 0,
    "fugatic_value": 0,
    "dissonance_value": 0,
    "cadence": "authentic",
}


def add_new_schema(schemata_dict):  # adds a new schema to the schemata dictionary
    s = {}

    s["id"] = len(schemata_dict)
    # print("Insert label:")
    # s["label"] = input()
    s["label"] = test_schema["label"]
    # print("How many voices for framework?")
    framework = []
    # n_voices = int(input())
    n_voices = test_schema["n_voices"]
    # print("Insert reference mode:")
    # mode = input()
    mode = test_schema["mode"]
    # print("Insert reference hexachord:")
    # hexachord = input()
    hexachord = test_schema["hexachord"]
    for i in range(n_voices):
        voice = {"name": "", "sequence": []}
        # print("Insert voice name:")
        # voice["voice"] = input()
        voice["name"] = test_schema["voices"][i]["name"]
        # print("Insert voice sequence in lilypond absolute notation:")
        # voice["sequence"] = lilypond2degree_sequence(input(), mode, hexachord)
        voice["sequence"] = lilypond2degree_sequence(
            test_schema["voices"][i]["sequence"], mode, hexachord
        )

        framework.append(voice)
        print(framework[-1])

    s["framework"] = framework

    return s


def add_new_schema_from_folder(schema_dir):
    schema = {}
    # load metadata.json
    with open(os.path.join(schema_dir, "metadata.json"), "r") as f:
        metadata = json.load(f)
    for key in metadata.keys():
        schema[key] = metadata[key]

    schema["voices"] = []
    sorted_directory = sorted(
        os.scandir(os.path.join(schema_dir, "voices")), key=lambda e: e.name
    )
    for lyfile in sorted_directory:
        f = open(os.path.join(schema_dir, "voices", lyfile.name), "r")
        sequence = str(f.read())
        name = lyfile.name[2:-3]
        schema["voices"].append({"name": name, "sequence": sequence})

    return schema


def add_new_realization_from_folder(realization_dir):
    realization = {}
    # load metadata.json
    with open(os.path.join(realization_dir, "metadata.json"), "r") as f:
        metadata = json.load(f)
    for key in metadata.keys():
        realization[key] = metadata[key]

    realization["voices"] = []
    sorted_directory = sorted(
        os.scandir(os.path.join(realization_dir, "voices")), key=lambda e: e.name
    )
    for lyfile in sorted_directory:
        f = open(os.path.join(realization_dir, "voices", lyfile.name), "r")
        sequence = str(f.read())
        name = lyfile.name[2:-3]
        realization["voices"].append({"name": name, "sequence": sequence})

    print(realization)


def add_new_realization(schema_id, schemata_dict):
    # to be continued...
    pass


def dissonance_value(
    voices, mode, hexachord
):  # returns dissonance value, given a sequence of voices in Lilypond format.
    # dissonances are M2,m2,A4,P4,m7,M7 and compound intervals.
    # I calculate the sounding interval always from the lowest sounding voice.
    pass
