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
        {"name": "basso", "sequence": "g1 e1 c1 c'1 c'1 g1 c'1"},
        {"name": "tenor", "sequence": "g1 c'1 e'1 g'1 e'1 d'1 c'1"},
        {"name": "alto", "sequence": "r1 r1 g'1 e1 c2 c'2 b'1 c'1"},
        {"name": "canto", "sequence": "r1 r1 g'1 c''1 e''1 g''1 e''1"},
    ],
}

test_realization {
	"id": "sequence_id"+"_"+str(id_value),
	"label": "sequence_label_+id",
	"n_voices": 4,
    "mode": "ionian",
    "hexachord": "naturalis",
    "voices": [
        {"name": "basso", "sequence": "g1 e2 d2 c4 c4 c'2. b4 b4 a8 b8 c'1 g1 c'1"},
        {"name": "tenor", "sequence": "r2 g2 c'2 d'2 e'2. f'4 g'2 g'2 e'2. d'8 c'8 d'1 c'1"},
        {"name": "alto", "sequence": "r1 r1 g'1 e'2 d'2 c'4 c'4 c''2. b'4 b'4 a'8 b'8 c'2 g'2"},
        {"name": "canto", "sequence": "r1 r1 r2 g'2 c''2 d''2 e''2. f''4 g''2 g''2 e''1"},
    ],
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



def add_new_expression(schemata_dict)