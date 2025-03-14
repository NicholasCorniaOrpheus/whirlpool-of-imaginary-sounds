"""
Conversion functions
"""

import abjad
import numpy as np
import random


# Metadata

mode_mapping = {
    "ionian": [0, "c", "d", "e", "f", "g", "a", "b"],
    "dorian": [0, "d", "e", "f", "g", "a", "b", "c"],
    "phrygian": [0, "e", "f", "g", "a", "b", "c", "d"],
    "lydian": [0, "f", "g", "a", "b", "c", "d", "e"],
    "mixolydian": [0, "g", "a", "b", "c", "d", "e", "f"],
    "aeolian": [0, "a", "b", "c", "d", "e", "f", "g"],
}

duration_mapping = {
    "4": "\\longa",
    "3": "\\breve.",
    "2": "\\breve",
    "3/2": "1.",
    "1": "1",
    "3/4": "2.",
    "1/2": "2",
    "3/8": "4.",
    "1/4": "4",
    "3/16": "8.",
    "1/8": "8",
    "1/16": "16",
}

duration_quarterLength = {
    "4": 16,
    "3": 12,
    "2": 8,
    "3/2": 6,
    "1": 4,
    "3/4": 3,
    "1/2": 2,
    "3/8": 1.5,
    "1/4": 1,
    "3/16": 0.75,
    "1/8": 0.5,
    "1/16": 0.25,
}

mode_intervals = {
    "ionian": ["M2", "M2", "m2", "M2", "M2", "M2", "m2"],
    "dorian": ["M2", "m2", "M2", "M2", "M2", "m2", "M2"],
    "phrygian": ["m2", "M2", "M2", "M2", "m2", "M2", "M2"],
    "lydian": ["M2", "M2", "M2", "m2", "M2", "M2", "m2"],
    "mixolydian": ["M2", "M2", "m2", "M2", "M2", "m2", "M2"],
    "aeolian": ["M2", "m2", "M2", "M2", "m2", "M2", "M2"],
}

stay_hexachord = 0.6
one_step_hexachord = 0.3
two_step_hexachord = 0.1
two_choices = (1 - stay_hexachord) / 2

hexachord_transition = {
    "durum": {
        "durum": stay_hexachord,
        "naturalis": stay_hexachord + one_step_hexachord,
        "mollis": 1.0,
    },
    "naturalis": {
        "durum": two_choices,
        "naturalis": two_choices + stay_hexachord,
        "mollis": 1.0,
    },
    "mollis": {
        "durum": two_step_hexachord,
        "naturalis": two_step_hexachord + one_step_hexachord,
        "mollis": 1.0,
    },
}

tessitura_voices = {
    "basso": {"low": "d,", "high": "f'"},
    "tenore": {"low": "bf,", "high": "c''"},
    "alto": {"low": "f", "high": "f''"},
    "canto": {"low": "a", "high": "a''"},
}

# Utility function
"""
example of degree sequence

seq = [{"degree": 1,"octave": 0, "ficta": "", "duration": "/breve", "quarterLength": 8}]

octave: 0 = central C in bass clef. positive numbers provides ' signs, negative ones , 

ficta defines notes outside the mode: "" for natural, "+" for raised, "-" for lowered

duration: according to lilypond we have longa, breve and numbers for shorter durations.
Dots are possibile
"""


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


def hexachord_transposition(mode, hexachord):
    if hexachord == "naturalis":
        return mode_mapping[mode]
    else:
        transposed_mode = [0]
        if hexachord == "durum":
            for degree in mode_mapping[mode][1:]:
                transposed_degree = abjad.NamedPitch(degree) + "P5"
                transposed_degree = abjad.NamedPitchClass(transposed_degree)
                transposed_mode.append(transposed_degree.name)

        if hexachord == "mollis":
            for degree in mode_mapping[mode][1:]:
                transposed_degree = abjad.NamedPitch(degree) + "P4"
                transposed_degree = abjad.NamedPitchClass(transposed_degree)
                transposed_mode.append(transposed_degree.name)

        return transposed_mode


def degree_sequence2lilypond(seq, mode, hexachord):
    lilypond_string = ""
    for element in seq:
        if element["degree"] == 0:
            pitch = "r"
        else:
            pitch = hexachord_transposition(mode, hexachord)[element["degree"]]
            if element["ficta"] == "":
                pass
            else:
                if element["ficta"] == "+":
                    pitch = abjad.NamedPitch(pitch)
                    if pitch.accidental.name == "natural":
                        pitch = pitch._apply_accidental(accidental="sharp")
                    else:
                        if pitch.accidental.name == "flat":
                            pitch = pitch._apply_accidental(accidental="natural")
                        else:  # sharp case
                            pitch += "m2"
                    pitch = pitch.name
                else:  # "-" case
                    pitch = abjad.NamedPitch(pitch)
                    if pitch.accidental.name == "natural":
                        pitch = pitch._apply_accidental(accidental="flat")
                    else:
                        if pitch.accidental.name == "sharp":
                            pitch = pitch._apply_accidental(accidental="natural")
                        else:  # flat case
                            pitch += "m2"
                    pitch = pitch.name

        octave = ""
        if element["octave"] < 0:
            for i in range(-element["octave"]):
                octave += ","
        else:
            for i in range(element["octave"]):
                octave += "'"
        duration = element["duration"]

        lilypond_string += str(pitch) + str(octave) + str(duration) + " "

    return lilypond_string


# converts an input string to a degree sequence for a given voice
def lilypond2degree_sequence(string, mode, hexachord):
    sequence = []
    splitted_string = string.split(" ")
    current_mode = hexachord_transposition(mode, hexachord)
    # print("Current mode:", current_mode)
    for element in splitted_string:
        degree = 0
        ficta = ""
        octave = 0
        if element == "":  # empty case
            pass
        else:
            if element[0] == "r":  # rest case
                rest = abjad.Rest(element)
                written_duration = str(rest.written_duration)
                duration = duration_mapping[written_duration]
                quarter_length = duration_quarterLength[written_duration]
            else:
                # order of instruction: pitch,accidental,octave signs,duration
                note = abjad.Note(element)
                pitch = abjad.NamedPitchClass(note)
                # print("Current note:", note)
                # search pitch in mode
                for d in current_mode[1:]:
                    if d[0] == pitch.name[0]:
                        d_pitch = abjad.NamedPitchClass(d)
                        difference = d_pitch - pitch
                        direction = difference.direction_number
                        if direction == 1:
                            ficta = "+"
                        if direction == -1:
                            ficta = "-"
                        else:
                            pass

                        # print("Degree:", current_mode.index(d))
                        degree = current_mode.index(d)

                octave = int(abjad.NamedPitch(note).octave.number - 3)
                written_duration = str(note.written_duration)
                duration = duration_mapping[written_duration]
                quarter_length = duration_quarterLength[written_duration]

            sequence.append(
                {
                    "degree": degree,
                    "octave": octave,
                    "ficta": ficta,
                    "duration": duration,
                    "quarterLength": quarter_length,
                }
            )
            # print(sequence[-1])
    return sequence


# returns a lilypond string given an input degree sequence and output mode
def mode_transposition(degree_sequence, mode, output_mode, hexachord):
    lilypond_string = ""
    for element in degree_sequence:
        if element["degree"] == 0:
            pitch = "r"
        else:
            # get the root
            root = abjad.NamedPitch(hexachord_transposition(output_mode, hexachord)[1])
            # get the
            pitch = abjad.NamedPitch(
                hexachord_transposition(output_mode, hexachord)[element["degree"]]
            )
            # adjust root to pitch
            root.octave.number = pitch.octave.number
            if root > pitch:
                root.octave.number += -1

            print("Root:", root)
            degree = element["degree"]
            interval = abjad.NamedInterval("P1")
            if degree == 1:
                pass
            else:
                for i in range(degree - 1):
                    interval += abjad.NamedInterval(mode_intervals[output_mode][i])

            print("Degree:", degree)

            pitch = root + interval

            print("Transposed pitch:", pitch)

            pitch = pitch.name

            if element["ficta"] == "":
                pass
            else:
                if element["ficta"] == "+":
                    pitch = abjad.NamedPitch(pitch)
                    if pitch.accidental.name == "natural":
                        pitch = pitch._apply_accidental(accidental="sharp")
                    else:
                        if pitch.accidental.name == "flat":
                            pitch = pitch._apply_accidental(accidental="natural")
                        else:  # sharp case
                            pitch += "m2"
                    pitch = pitch.name
                else:  # "-" case
                    pitch = abjad.NamedPitch(pitch)
                    if pitch.accidental.name == "natural":
                        pitch = pitch._apply_accidental(accidental="flat")
                    else:
                        if pitch.accidental.name == "sharp":
                            pitch = pitch._apply_accidental(accidental="natural")
                        else:  # flat case
                            pitch += "m2"
                    pitch = pitch.name

        octave_number = pitch.octave.number - 3
        octave = ""
        if octave_number < 0:
            for i in range(-octave_number):
                octave += ","
        else:
            for i in range(octave_number):
                octave += "'"
        duration = element["duration"]

        lilypond_string += str(pitch) + str(octave) + str(duration) + " "

    return lilypond_string


# converts a degree sequences of voices an octave lower or higher
def octave_transposition(degree_voices, transposition):
    transposed_voices = degree_voices
    if transposition == "above":  # one octave higher
        transposition = 1
    else:  # one octave down
        transposition = -1

    for voice in transposed_voices:
        for note in voice:
            note["octave"] += transposition

    return transposed_voices


# returns True or False if sequence is conform to tessitura
def check_tessitura_voice(seq, voice):
    splitted_string = seq.split(" ")
    check = True
    for element in splitted_string:
        if element == "":
            pass
        else:
            if element[0] == "r":
                pass
            else:
                note = abjad.Note(element)
                pitch = abjad.NamedPitch(note)
                if note < abjad.NamedPitch(tessitura_voices[voice]["low"]):
                    return False
                if note > abjad.NamedPitch(tessitura_voices[voice]["high"]):
                    return False
    return check


# check the tessitura of a whole set of voices from a (transposed) schema
def check_tessitura_voices(voices):
    check = True
    for voice in voices:
        if check_tessitura_voice(voice["sequence"], voice["name"]):
            pass
        else:
            return False

    return check


def get_lowest_note(
    chord,
):  # given a list of lilypond notes, returns the position of the lowest sounding note:
    lowest_note = abjad.Note(chord[0])
    for note in chord:
        if abjad.Note(note) < lowest_note:
            lowest_note = abjad.Note(note)

    return chord.index(lowest_note.name)


def get_length_sequence(
    degree_voices, mode, hexachord
):  # returns max quarterLength given lilypond sequences of voices
    # total length (in quarter notes), assuming all voices are of same length:
    total_length = 0
    for note in degree_voices[0]:
        total_length += note["quarterLength"]

    return total_length


def get_duration_window(
    degree_voices, mode, hexachord
):  # returns shortest length of lilypond sequences of voices
    # shortest duration as reference
    duration_window = 100
    for degree_voice in degree_voices:
        for note in degree_voice:
            if note["quarterLength"] < duration_window:
                duration_window = note["quarterLength"]

    return duration_window


def lilypond_voices2degree(
    voices, mode, hexachord
):  # convert the sequences to degree_sequences
    degree_voices = []
    for voice in voices:
        degree_voices.append(
            lilypond2degree_sequence(voice["sequence"], mode, hexachord)
        )

    return degree_voices


# TOO COMPLICATED!!!!
def lilypond_voices2duration_windows(
    voices, mode, hexachord
):  # splits notes in homophonic sequence according to shortest value
    # convert voices into degree_voices
    degree_voices = lilypond_voices2degree(voices, mode, hexachord)
    # print("Degree voices:", degree_voices)
    # get shorter duration
    duration_window = get_duration_window(degree_voices, mode, hexachord)
    # print("Duration window:", duration_window)
    # get total length
    total_length = get_length_sequence(degree_voices, mode, hexachord)
    # split lilypond strings into list
    lilypond_sequences = []
    for voice in voices:
        # To use the next() method I need the lists to be iterable
        lilypond_sequences.append(iter(voice["sequence"].split(" ")))
    # print("Lilypond sequences:", lilypond_sequences)
    # generate new homophonic sequence
    homophonic_sequences = [[] for i in range(len(voices))]
    print(homophonic_sequences)
    exit_condition = False

    for i in range(len(voices)):
        voice = lilypond_sequences[i]
        for j in range(degree_voices[i]):
            quarter_length = degree_voices[i][j]["quarterLength"]
            # this number should always be integer and ge 1
            # not working for tuplets...
            n = int(float(quarter_length) / duration_window)
            for k in range(n):
                note = abjad.NamedPitch(voice[j])
                homophonic_sequences[i].append(note.name)
