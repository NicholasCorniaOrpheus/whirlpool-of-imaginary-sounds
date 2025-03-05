"""
Main code of A Madrigalist Würfelspiel.
"""

import json, csv
from modules.utilities import *
from modules.conversions import *
import sys

sys.path.append("./modules")  # importing custom functions in modules


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

string_test = r"g,\breve g1. bf2. c4. bf8 d1 cs8. b16 d1 g'2 fs'2 g1"

# print(degree_sequence2lilypond(seq_test, mode="dorian", hexachord="durum"))

# print(hexachord_transposition(mode_test, hexachord_test))

print(lilypond2degree_sequence(string_test, mode_test, hexachord_test))
