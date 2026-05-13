"""
Core functions of the model
"""

import os
import json
import random
import numpy as np
import sys

sys.path.append("./modules")  # importing custom functions in modules

from modules.conversions import *

# from modules.utitlities import *


def add_new_schema_from_folder(schema_dir, id_number):
    schema = {"id": id_number}

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
        sequence = sequence.replace("  ", " ")
        name = lyfile.name[2:-3]
        degree_sequence = lilypond2degree_sequence(
            sequence, schema["mode"], schema["hexachord"]
        )
        schema["voices"].append(
            {"name": name, "sequence": sequence, "degree_sequence": degree_sequence}
        )

    return schema


def update_schemata_from_folder(schemata_dir, schemata):
    # check for duplicates
    update = False
    for d in os.scandir(schemata_dir):
        query = list(filter(lambda x: x[1]["label"] == d.name, enumerate(schemata)))
        if len(query) > 0:
            # upload current schema
            update = True
            schemata[query[0][0]] = add_new_schema_from_folder(d.path, query[0][0])

        else:
            # append new schema
            print("Appending new schemata:", d.name)
            schemata.append(add_new_schema_from_folder(d.path, len(schemata) - 1))

    if update:
        print("Updating current schemata...")
    return schemata


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


def dissonance_value(
    voices, mode, hexachord
):  # returns dissonance value, given a sequence of voices in Lilypond format.
    # dissonances are M2,m2,A4,P4,m7,M7 and compound intervals.
    # I calculate the sounding interval always from the lowest sounding voice.
    pass
