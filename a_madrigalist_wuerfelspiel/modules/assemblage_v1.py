"""
Assemblage functions v.1
"""

import abjad
import numpy as np

import sys

sys.path.append("./modules")  # importing custom functions in modules

from modules.conversions import *
from modules.model import *
from modules.utilities import *

# VALUES

stay_hexachord = 0.80
one_step_hexachord = 0.1

table_size = 11  # 2d6

hexachord_transition = {
    "durum": {
        "durum": stay_hexachord,
        "naturalis": stay_hexachord + one_step_hexachord,
        "mollis": 1.0,
    },
    "naturalis": {
        "naturalis": stay_hexachord,
        "durum": stay_hexachord + one_step_hexachord,
        "mollis": 1.0,
    },
    "mollis": {
        "mollis": stay_hexachord,
        "naturalis": stay_hexachord + one_step_hexachord,
        "durum": 1.0,
    },
}

# FUNCTIONS


def get_random_hexachord(previous_hexachord):
    random_value = np.random.uniform()
    for key in hexachord_transition.keys():
        if random_value < hexachord_transition[previous_hexachord][key]:
            return key


def get_random_mode():
    random_value = np.random.uniform()
    step = len(mode_mapping)
    value = 1 / step
    for key in mode_mapping.keys():
        if random_value < value:
            return key
        else:
            value += value


def generate_transition_score():
    # for now it just randomly picks a value between 0 and 3
    # 0 = no common notes
    # 1,2,3 = some common notes, 1 is for fugative opening.

    transition_score_distribution = [0.1, 0.5, 0.8, 1.0]
    random_value = np.random.uniform()
    # print("Random value:", random_value)
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
        try:
            if splitted_string[i][0] == "r":
                # skip voice
                continue
            if splitted_string[i] in next_pitches:
                pass
            else:
                note = abjad.Note(splitted_string[i])
                pitch = abjad.NamedPitch(note)
                next_pitches.add(abjad.NamedPitchClass(pitch))
        except IndexError:
            print(voice["sequence"])

    # return transition score using set intersection method.

    # print("previous pitches:", previous_pitches)

    # print("next pitches:", next_pitches)

    return len(previous_pitches.intersection(next_pitches))


""" first version is very simple:

1. Get 11 random schemata from the corpus, uniformily distributed.
2. generate a transition score, values between 0 and 3
x. randomly transpose the 11 schema: modes are uniform, while hexachord is governated by hexachord_transition dictionary
3. weight table_schemata probabilities according to transition score value.

"""


def table_next_schema(previous_schema, schemata, table_size=table_size):
    # Generate table schemata
    table_schemata = []
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

    # Generate transition score
    transition_score = generate_transition_score()

    print("Transition score:", transition_score)

    # get scores for each schema in table_schemata
    table_schemata_probabilities = []
    normalization = 0
    for schema in table_schemata:
        # print("Current schema:", schema["id"])
        # input()
        # export table in JSON format
        temp_export = "./tmp/table.json"
        dict2json(table_schemata, temp_export)

        """
        possibile values for (transition_score - score)^2 = {0,1,4,9}
        the closer the distance, the higher the probability.
        """

        distance = (
            10
            - (
                transition_score
                - get_transition_score_from_schemata(previous_schema, schema)
            )
            ** 2
        )
        normalization += distance
        table_schemata_probabilities.append(distance)

    for i in range(len(table_schemata_scores)):
        table_schemata_probabilities[i] = (
            table_schemata_probabilities[i] / normalization
        )

    print("Probabilities:", table_schemata_probabilities)


"""
def table_next_schema(previous_schema, schemata, table_size=table_size):
    # Generate table schemata
    table_schemata = []
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

    # Generate transition score
    transition_score = generate_transition_score()

    print("Transition score:", transition_score)

    # Random transposition of schemata in table to fit transition_score

    for schema in table_schemata:
        # print("Current schema:", schema["id"])
        # input()
        # export table in JSON format
        temp_export = "./tmp/table.json"
        dict2json(table_schemata, temp_export)
        condition = False
        counter = 0
        temp_transition_score = copy.deepcopy(transition_score)
        while condition == False:
            counter += 1
            new_mode = get_random_mode()
            new_hexachord = get_random_hexachord(previous_schema["hexachord"])
            transposed_schema = modal_transposition_voices(
                schema, new_mode, new_hexachord
            )

            if counter > 20:
                print("Adapting transition score...")
                if temp_transition_score > 0:
                    temp_transition_score = transition_score - 1

            # evaluate transition score:
            score = get_transition_score_from_schemata(
                previous_schema, transposed_schema
            )

            if score == temp_transition_score:
                print("Schema id:", schema["id"])
                print(transposed_schema["voices"][0]["sequence"])
                condition = True
                # check for tessitura
                if (
                    check_tessitura_voices(transposed_schema["voices"]) == False
                ):  # try octave transpositions
                    octave_up = octave_transposition_schema(transposed_schema, "up")
                    octave_down = octave_transposition_schema(transposed_schema, "down")

                    if check_tessitura_voices(octave_up["voices"]):
                        transposed_schema = octave_up
                        condition = True
                        schema = transposed_schema
                    elif check_tessitura_voices(octave_down["voices"]):
                        transposed_schema = octave_down
                        condition = True
                        schema = transposed_schema
                    else:
                        pass
                else:
                    condition = True
                    schema = transposed_schema
            else:
                pass

 """
