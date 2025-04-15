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
from modules.assemblage_v1 import *


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
update_schemata(schemata)

# transition_score = generate_transition_score()

table_next_schema(schemata["schemata"][0], schemata["schemata"])


# Testing


lilypond_seq_test = "c'2 d'1 c'1 g'1 g2 a2 bf1 a2 a'2 gs'4 fs'4 gs'1"

"""
degree_seq_test = [
    {"degree": 4, "octave": 1, "ficta": "", "duration": "1", "quarterLength": 4},
    {"degree": 4, "octave": 1, "ficta": "", "duration": "1", "quarterLength": 4},
    {"degree": 5, "octave": 1, "ficta": "", "duration": "1", "quarterLength": 4},
    {"degree": 6, "octave": 1, "ficta": "+", "duration": "1", "quarterLength": 4},
    {"degree": 7, "octave": 1, "ficta": "", "duration": "1", "quarterLength": 4},
    {"degree": 1, "octave": 1, "ficta": "", "duration": "1", "quarterLength": 4},
    {"degree": 5, "octave": 1, "ficta": "-", "duration": "1", "quarterLength": 4},
]

input_mode = "lydian"
output_mode = "dorian"
input_hexachord = "durum"
output_hexachord = "mollis"

print(
    modal_transposition(
        lilypond_seq_test,
        lilypond2degree_sequence(lilypond_seq_test, input_mode, input_hexachord),
        input_mode,
        output_mode,
        input_hexachord,
        output_hexachord,
    )
)
"""
