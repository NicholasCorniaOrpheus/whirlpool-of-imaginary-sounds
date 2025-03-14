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


def add_new_schema_from_folder(schema_dir):
    schema = {"id": 0}

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
            schemata[query[0][0]] = add_new_schema_from_folder(d.path)

        else:
            # append new schema
            print("Appending new schemata:", d.name)
            schemata.append(add_new_schema_from_folder(d.path))
            schemata[-1]["id"] = len(schemata) - 1

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


def generate_transition_score():
    # for now it just randomly picks a value between 0 and 3
    # 0 = no common notes
    # 1,2,3 = some common notes, 1 is for fugative opening.

    transition_score_distribution = [0.1, 0.5, 0.8, 1.0]
    random_value = np.random.uniform()
    print("Random value:", random_value)
    for i in range(len(transition_score_distribution)):
        if random_value < transition_score_distribution[i]:
            return i


def get_transition_score_from_schemata(previous_schema, next_schema):
    # get last cadential pitches from previous_schema
    previous_pitches = set()

    for voice in previous_schema["voices"]:
        splitted_string = voice["sequence"].split(" ")
        i = -1
        if splitted_string[i][0] != "":
            if splitted_string[i][0] == "r":
                # skip voice
                continue
            if splitted_string[i] in previous_pitches:
                pass
            else:
                note = abjad.Note(splitted_string[i])
                pitch = abjad.NamedPitch(note)
                previous_pitches.add(abjad.NamedPitchClass(pitch))
        else:
            i -= 1

    # get first chord from next schema
    next_pitches = set()

    for voice in next_schema["voices"]:
        splitted_string = voice["sequence"].split(" ")
        if splitted_string[i][0] == "r":
            # skip voice
            continue
        if splitted_string[i] in next_pitches:
            pass
        else:
            note = abjad.Note(splitted_string[i])
            pitch = abjad.NamedPitch(note)
            next_pitches.add(abjad.NamedPitchClass(pitch))

    # return transition score using set intersection method.

    print("previous pitches:", previous_pitches)

    print("next pitches:", next_pitches)

    return len(previous_pitches.intersection(next_pitches))


def table_next_schema(previous_schema, schemata):
    table_size = 11  # for 2d6
    table_schemata = []
    if previous_schema == {}:  # first schema case
        schemata_size = len(schemata)
        for i in range(table_size):
            duplicate = True
            while duplicate:
                random_value = np.random.randint(0, schemata_size - 1)
                query = list(
                    filter(
                        lambda x: x["label"] == schemata[random_value]["label"],
                        table_schemata,
                    )
                )
                if len(query) > 0:
                    pass
                else:
                    duplicate = False
                    # append new schema
                    table_schemata.append(schemata[random_value])
                    previous_schema = schemata[random_value]
                    # randomly change mode and hexachord
                    tessitura_check = False
                    while tessitura_check == False:
                        table_schemata[-1]["mode"] = get_random_mode()
                        table_schemata[-1]["hexachord"] = get_random_hexachord(
                            table_schemata[-1]["hexachord"]
                        )
                        # change sequences values
                        for voice in table_schemata[-1]["voices"]:
                            """voice["sequence"] = degree_sequence2lilypond(
                                voice["degree_sequence"],
                                table_schemata[-1]["mode"],
                                table_schemata[-1]["hexachord"],
                            )"""
                            print("Previous mode:", previous_schema["mode"])
                            print("Current mode:", table_schemata[-1]["mode"])
                            voice["sequence"] = modal_transposition(
                                voice["degree_sequence"],
                                previous_schema["mode"],
                                table_schemata[-1]["mode"],
                                previous_schema["hexachord"],
                                table_schemata[-1]["hexachord"],
                            )
                        tessitura_check = check_tessitura_voices(
                            table_schemata[-1]["voices"]
                        )

                    print(table_schemata[-1])
                    input()

        for schema in table_schemata:
            print(schema["label"])


def dissonance_value(
    voices, mode, hexachord
):  # returns dissonance value, given a sequence of voices in Lilypond format.
    # dissonances are M2,m2,A4,P4,m7,M7 and compound intervals.
    # I calculate the sounding interval always from the lowest sounding voice.
    pass
