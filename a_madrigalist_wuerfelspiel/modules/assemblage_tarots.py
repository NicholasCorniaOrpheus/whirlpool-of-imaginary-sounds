"""
Assemblage function inspired by Tarot Cards 

The Major Arcana will represent the schemata encoded (thus, more than the usual 22 cards)
while the Minor Arcana and their four seeds will be connected with modes and hexachords

- Figure Cards {11,...14} => Mode is stable
- Number Cards {1,...10} => Mode is changing in a cyclical way

From 1 to 5 add clockwise, from 6 to 10 counterclockwise (6 = -5, 7= -4,... 10 = -1)

Modes ~ Z6

- Seed of Cups and Clubs => Hexachord is stable
- Seed of Hearts => Hexachord clockwise
- Seed of Spades => Hexachord counter-clockwise

Hexachord ~ Z3
"""


import abjad
import numpy as np
import random

# cyclic list
from collections import deque

import sys

sys.path.append("./modules")  # importing custom functions in modules

from modules.conversions import *
from modules.model import *
from modules.utilities import *

schemata = json2dict(os.path.join("data", "schemata.json"))

modes_group = [
    "ionian",
    "dorian",
    "phrygian",
    "lydian",
    "mixolydian",
    "aeolian",
]

hexachords_group = ["mollis", "naturalis", "durum"]


def draw_from_arcana_deck(deck):
    random_card = random.choice(tuple(deck))
    deck.remove(random_card)
    return random_card, deck


# arcana card as tuple = (s,n) where s is the seed and n is the value
def minor_arcana_transposition(schema, arcana_card, modes_group, hexachords_group):
    # check seed
    new_hexachord = ""
    old_hexachord = schema["hexachord"]
    position = hexachords_group.index(old_hexachord)
    print("Old hexachord: ", old_hexachord)
    print("Position: ", position)
    if arcana_card[0] == 3:
        # Hearts, clockwise change
        hexachords_cycle = deque(hexachords_group)
        hexachords_cycle.rotate(1)
        new_hexachord = hexachords_cycle[position]

    elif arcana_card[0] == 4:
        # Spades, counterclockwise
        hexachords_cycle = deque(hexachords_group)
        hexachords_cycle.rotate(-1)
        new_hexachord = hexachords_cycle[position]
    else:
        # no changes
        new_hexachord = old_hexachord

    # check number:

    old_mode = schema["mode"]
    print("Old mode: ", old_mode)
    new_mode = ""
    position = modes_group.index(old_mode)
    print("Position: ", position)
    if arcana_card[1] >= 11:
        new_mode = old_mode
    else:
        if arcana_card[1] <= 5:
            rotation = arcana_card[1]
        else:
            rotation = arcana_card[1] - 11

        modes_cycle = deque(modes_group)

        modes_cycle.rotate(rotation)

        print(modes_cycle)

        new_mode = modes_cycle[position]

    # modal transposition of schema

    return modal_transposition_voices(schema, new_mode, new_hexachord)


def tarot_assemblage(schemata, major_arcana, minor_arcana, n_verses):
    # iterate the process n times
    assemblage = []
    for i in range(n_verses):
        # draw a major_arcana card
        schema_id, major_arcana = draw_from_arcana_deck(major_arcana)

        schema_id -= 1

        print(f"Drawn card with id: {schema_id}")

        # draw a minor_arcana card
        transposition, minor_arcana = draw_from_arcana_deck(minor_arcana)

        print(f"Drawn minor arcana card: {transposition}")

        # transpose the schema accordingly

        schema = schemata["schemata"][schema_id]

        schema = minor_arcana_transposition(
            schema, transposition, modes_group, hexachords_group
        )

        assemblage.append(schema)

    # export table in JSON format
    temp_export = "./tmp/assemblage.json"
    dict2json(assemblage, temp_export)

    return assemblage
