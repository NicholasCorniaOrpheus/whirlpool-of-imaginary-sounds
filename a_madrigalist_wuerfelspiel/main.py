"""
Main code of A Madrigalist Würfelspiel.
"""

import os
import json, csv
import sys

sys.path.append("./modules")  # importing custom functions in modules

from modules.utilities import *
from modules.conversions import *
from modules.model import *


# Loading data files

data_dir = "./data"
schemata_filename = os.path.join(data_dir, "schemata.json")
schemata_dir = os.path.join(data_dir, "scores", "schemata")
poems_filename = os.path.join(data_dir, "poems.json")
affects_filename = os.path.join(data_dir, "affects.json")
schemata = json2dict(schemata_filename)
poems = json2dict(poems_filename)
affects = json2dict(affects_filename)

# Functions

"""schemata from folder"""


def update_schemata(schemata):
    schemata["schemata"] = update_schemata_from_folder(
        schemata_dir, schemata["schemata"]
    )
    dict2json(schemata, schemata_filename)


# CODE

# works
# update_schemata(schemata)

# transition_score = generate_transition_score()


# Testing

"""test table_schemata"""
# table_next_schema({}, schemata["schemata"])


""" test tessitura voices
for schema in schemata["schemata"]:
    check = check_tessitura_voices(schema["voices"])
    if check == False:
        print("Problem in schema:", schema)
"""

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

print(mode_transposition(seq_test, "dorian", "lydian", "durum"))

seq_test = [
    {
        "degree": 1,
        "octave": 0,
        "ficta": "",
        "duration": "\\breve",
        "quarterLength": 8,
    },
    {"degree": 5, "octave": 0, "ficta": "", "duration": "1", "quarterLength": 4},
    {"degree": 4, "octave": 0, "ficta": "+", "duration": "2", "quarterLength": 2},
    {"degree": 3, "octave": 0, "ficta": "+", "duration": "2", "quarterLength": 2},
    {"degree": 4, "octave": 0, "ficta": "+", "duration": "1", "quarterLength": 4},
    {"degree": 5, "octave": 0, "ficta": "", "duration": "1", "quarterLength": 4},
]


mode_test = "dorian"

hexachord_test = "mollis"

string_test = "r\\breve g1 e1 c2 c'2 b1 c'1"

test_schema_dir = "empio_tuo_strale_opening"

test_realization_dir = "empio_tuo_strale_opening_1"

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


"""
test octave transposition: WORKS
test_degree_voices = []
for voice in test_schema["voices"]:
    test_degree_voices.append(
        lilypond2degree_sequence(
            voice["sequence"], test_schema["mode"], test_schema["hexachord"]
        )
    )

transposed_degree_voices = octave_transposition(test_degree_voices, "down")

for voice in transposed_degree_voices:
    print(
        degree_sequence2lilypond(voice, test_schema["mode"], test_schema["hexachord"])
    )

"""
