"""
Conversion functions
"""

import abjad
import numpy as np
import random
import copy


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

mode_transpositions = {
    "ionian": abjad.NamedInterval("P1"),
    "dorian": abjad.NamedInterval("M2"),
    "phrygian": abjad.NamedInterval("M3"),
    "lydian": abjad.NamedInterval("P4"),
    "mixolydian": abjad.NamedInterval("P5"),
    "aeolian": abjad.NamedInterval("M6"),
}

hexachord_transpositions = [
    {
        "start": "naturalis",
        "end": "mollis",
        "interval": abjad.NamedInterval("P4"),
        "direction": "up",
    },
    {
        "start": "naturalis",
        "end": "durum",
        "interval": abjad.NamedInterval("P4"),
        "direction": "down",
    },
    {
        "start": "naturalis",
        "end": "naturalis",
        "interval": abjad.NamedInterval("P1"),
        "direction": "up",
    },
    {
        "start": "mollis",
        "end": "mollis",
        "interval": abjad.NamedInterval("P1"),
        "direction": "up",
    },
    {
        "start": "mollis",
        "end": "durum",
        "interval": abjad.NamedInterval("M2"),
        "direction": "up",
    },
    {
        "start": "mollis",
        "end": "naturalis",
        "interval": abjad.NamedInterval("P4"),
        "direction": "down",
    },
    {
        "start": "durum",
        "end": "mollis",
        "interval": abjad.NamedInterval("M2"),
        "direction": "down",
    },
    {
        "start": "durum",
        "end": "durum",
        "interval": abjad.NamedInterval("P1"),
        "direction": "down",
    },
    {
        "start": "durum",
        "end": "naturalis",
        "interval": abjad.NamedInterval("P4"),
        "direction": "up",
    },
]


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
            pitch = abjad.NamedPitch(pitch)
            if element["ficta"] == "":
                pass
            else:
                if element["ficta"] == "+":
                    if pitch.accidental.name == "natural":
                        pitch = pitch._apply_accidental(accidental="sharp")
                    else:
                        if pitch.accidental.name == "flat":
                            pitch = pitch._apply_accidental(accidental="natural")
                        else:  # sharp case
                            pitch += abjad.NamedInterval("m2")
                else:  # "-" case
                    if pitch.accidental.name == "natural":
                        pitch = pitch._apply_accidental(accidental="flat")
                    else:
                        if pitch.accidental.name == "sharp":
                            pitch = pitch._apply_accidental(accidental="natural")
                        else:  # flat case
                            pitch += abjad.NamedInterval("m2")

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

    return lilypond_string[:-1]


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
                pitch = abjad.NamedPitch(note)
                octave = int(abjad.NamedPitch(note).octave.number - 3)
                # reset pitch to octave 0 to calculate modal deviations
                pitch.octave.number = 3
                # search pitch in mode
                for d in current_mode[1:]:
                    if d[0] == pitch.name[0]:
                        d_pitch = abjad.NamedPitch(d)
                        difference = d_pitch - pitch
                        direction = difference.direction_number
                        # print(f"pitch: {pitch}, degree: {d_pitch}")
                        # print(f"direction: {direction}, difference: {difference}")
                        if direction == 1:
                            ficta = "+"
                        if direction == -1:
                            ficta = "-"
                        else:
                            pass

                        degree = current_mode.index(d)
                        break

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


def modal_transposition(
    lilypond_sequence,
    degree_sequence,
    input_mode,
    output_mode,
    input_hexachord,
    output_hexachord,
):
    # get the new root

    # print("Input lilypond sequence:", lilypond_sequence)

    # print(f"Modes:{input_mode} , {output_mode}")

    # print(f"Hexachords:{input_hexachord} , {output_hexachord}")

    # print("Input degree sequence:", degree_sequence)

    old_root = copy.deepcopy([degree_sequence[0]])
    old_root[0]["degree"] = 1

    old_root = degree_sequence2lilypond(old_root, input_mode, input_hexachord)
    old_root = abjad.Note(old_root)
    old_root = abjad.NamedPitch(old_root)
    old_root_octave = old_root.octave.number - 3

    # print(f"Old root: {old_root}")

    query = list(
        filter(
            lambda x: x["start"] == input_hexachord and x["end"] == output_hexachord,
            hexachord_transpositions,
        )
    )

    if query[0]["direction"] == "up":
        new_root = (
            old_root
            + query[0]["interval"]
            + mode_transpositions[output_mode]
            - mode_transpositions[input_mode]
        )
        differential_interval = (
            query[0]["interval"]
            + mode_transpositions[output_mode]
            - mode_transpositions[input_mode]
        )
    else:
        new_root = (
            old_root
            - query[0]["interval"]
            + mode_transpositions[output_mode]
            - mode_transpositions[input_mode]
        )
        differential_interval = (
            -query[0]["interval"]
            + mode_transpositions[output_mode]
            - mode_transpositions[input_mode]
        )

    # print("New root:", new_root)
    # print("Differential interval:", differential_interval)

    # transpose the sequence

    transposed_lilypond_sequence = ""

    transposed_sequence = copy.deepcopy(lilypond_sequence.split(" "))

    for i in range(len(transposed_sequence)):
        # rest case
        element = transposed_sequence[i]
        # print("Current element:", element)
        if element == "":
            pass
        else:
            if element[0] == "r":
                pass

            else:
                # get namedpitch
                note = abjad.Note(element)
                old_pitch = abjad.NamedPitch(note)
                try:
                    degree = degree_sequence[i]["degree"]
                except IndexError:
                    print(lilypond_sequence)
                    print(degree_sequence)
                # get modal gradient
                gradient = abjad.NamedInterval("P1")
                for j in range(degree - 1):
                    gradient += abjad.NamedInterval(
                        mode_intervals[output_mode][j]
                    ) - abjad.NamedInterval(mode_intervals[input_mode][j])

                new_note = copy.deepcopy(note)
                new_pitch = abjad.NamedPitch(new_note)
                new_pitch += differential_interval + gradient
                # print(
                # f" old pitch: {old_pitch}, degree: {degree}, gradient: {gradient}, new pitch: {new_pitch}"
                # )

                transposed_sequence[i] = str(new_pitch.name) + str(
                    degree_sequence[i]["duration"]
                )
                transposed_lilypond_sequence += transposed_sequence[i] + " "

    # get transposed_degree_sequence
    transposed_degree_sequence = lilypond2degree_sequence(
        transposed_lilypond_sequence, output_mode, output_hexachord
    )

    # return the outputs
    return transposed_lilypond_sequence[:-1], transposed_degree_sequence


def modal_transposition_voices(schema, output_mode, output_hexachord):
    for voice in schema["voices"]:
        voice["sequence"], voice["degree_sequence"] = modal_transposition(
            voice["sequence"],
            voice["degree_sequence"],
            schema["mode"],
            output_mode,
            schema["hexachord"],
            output_hexachord,
        )

    schema["mode"] = output_mode
    schema["hexachord"] = output_hexachord

    return schema


# converts a degree sequences an octave lower or higher
def octave_transposition(degree_voice, transposition):
    transposed_degree_voice = degree_voice
    if transposition == "up":  # one octave higher
        transposition = 1
    else:  # one octave down
        transposition = -1

    for note in transposed_degree_voice:
        note["octave"] += transposition

    return transposed_degree_voice


def octave_transposition_schema(schema, transposition):
    transposed_schema = schema
    for i in range(len(schema["voices"])):
        transposed_schema["voices"][i]["degree_sequence"] = octave_transposition(
            schema["voices"][i]["degree_sequence"], transposition
        )
        transposed_schema["voices"][i]["sequence"] = degree_sequence2lilypond(
            transposed_schema["voices"][i]["degree_sequence"],
            schema["mode"],
            schema["hexachord"],
        )

    return transposed_schema


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


# I assume an assemblage as a list of schemata
def abjad_assemblage2lilypond_score(assemblage):
    preamble = r"""

    ficta = { \once \set suggestAccidentals = ##t }
    mens ={ \override Staff.NoteHead.style = #'baroque }

    endmens ={ \revert Staff.NoteHead.style }

    %#(set-global-staff-size 15.5767485433)


    \paper {
     top-system-spacing.basic-distance = #10
      system-system-spacing.basic-distance = #20
      last-bottom-spacing.basic-distance = #10
    horizontal-shift = #7
    top-margin = 1.5 \cm
    bottom-margin = 1 \cm
    left-margin = 1.8 \cm
    right-margin = 1.8 \cm
    

    }

    #(set-global-staff-size 18)

    \header{
     title= \markup{
       \override #'(font-name . "Hultog") 
       "A Madrigalist Wuerfelspiel" } 
     subtitle = \markup{ 
       \override #'(font-name . "Hultog") 
       "A Whirlpool of Imaginary Sounds project" }
     composer = \markup{ \override #'(font-name . "Hultog") "?" }
     poet = \markup{ \override #'(font-name . "Hultog") "" }
     copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2025" }
     arranger =  \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia" }
     tagline = \markup{ \epsfile #X #35 #"wois.eps"}
    }

    \version "2.18.2"
    \language "english"

    \layout{
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override StaffGrouper.staff-staff-spacing.basic-distance = #5
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
\override StaffGrouper.staffgroup-staff-spacing.padding = #5
  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)

  }
  \context { \Voice \override NoteHead.style = #'baroque }
   \context {
    \Staff
    \RemoveEmptyStaves
  }
  \context{
    \Voice
    \RemoveEmptyStaves
  }
  \context {      \Dynamics
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.basic-distance = #10
    }
  
  
} """

    n_voices = assemblage[0]["n_voices"]
    length_assemblage = len(assemblage)
    voices = []
    for i in range(n_voices):
        voice_name = assemblage[0]["voices"][n_voices - (i + 1)]["name"]
        # build a voice in abjad (change call from lower to higher voice)
        sequence = ""
        for j in range(length_assemblage):
            sequence += (
                assemblage[j]["voices"][n_voices - (i + 1)]["sequence"]
                + """ \\bar"||" """
            )

        voices.append(abjad.Voice(sequence[:-1], name=voice_name.capitalize()))
        if voice_name == "basso":
            abjad.attach(abjad.Clef("bass"), voices[-1][0])
        elif voice_name == "tenore":
            abjad.attach(abjad.Clef("treble_8"), voices[-1][0])

        abjad.attach(abjad.TimeSignature((2, 1)), voices[-1][0])

    score = abjad.Score(voices, name="Score")

    lilypond_file = abjad.LilyPondFile([preamble, score])

    return lilypond_file


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
