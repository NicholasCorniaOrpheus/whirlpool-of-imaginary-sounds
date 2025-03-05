"""
Main code of A Madrigalist Würfelspiel.
"""

import os
import json, csv
from modules.utilities import *
from modules.conversions import *
from modules.model import *
import sys

sys.path.append("./modules")  # importing custom functions in modules

# Loading data files

data_dir = "./data"
schemata_filename = os.path.join(data_dir, "schemata.json")
poems_filename = os.path.join(data_dir, "poems.json")
affects_filename = os.path.join(data_dir, "affects.json")
schemata = json2dict(schemata_filename)
poems = json2dict(poems_filename)
affects = json2dict(affects_filename)

# Testing

seq_test = [
    {"degree": 1, "octave": 0, "accidental": "", "duration": r"\breve"},
    {"degree": 5, "octave": 0, "accidental": "", "duration": "1"},
    {"degree": 4, "octave": 0, "accidental": "+", "duration": "2"},
    {"degree": 3, "octave": 0, "accidental": "+", "duration": "2"},
    {"degree": 4, "octave": 0, "accidental": "+", "duration": "1"},
    {"degree": 5, "octave": 0, "accidental": "", "duration": "1"},
]

mode_test = "dorian"

hexachord_test = "mollis"

string_test = r"r\breve g'1 e1 c2 c'2 b'1 c'1"


# print(degree_sequence2lilypond(seq_test, mode="dorian", hexachord="durum"))

# print(hexachord_transposition(mode_test, hexachord_test))

# print(lilypond2degree_sequence(string_test, mode_test, hexachord_test))

s = add_new_schema(schemata["schemata"])

schemata["schemata"].append(s)

dict2json(schemata, schemata_filename)
