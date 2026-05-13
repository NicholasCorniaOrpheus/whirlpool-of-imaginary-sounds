# A Madrigalist Würfelspiel

This project is a demo for my 2025 docArtes application.

A corpus of contrapunctual fragments and schemata is stored in the `data` folder, and is assembled to generate madrigals based on an probabilistic algorithm inspired by 18th and early 19th century dice games (_würfelspielen_).

# Main concept

The main goal of the project is to generate polyphonic music given a poem.
Each verse will be assigned to a randomly selected schema, or realization of the latter, according to a set of rules based on the text's affects.

# Corpus

The `schemata` folder stores a series of musical schemata, contrapuctual frameworks selected from [Le Vecchie Musiche](www.vecchiemusiche.be) repertoire and expandes the author's master thesis [A Mannerist Fakebook](https://www.academia.edu/49072383/A_Mannerist_fake_book_A_case_study_on_Historical_Popular_music_in_Italy_1520_1650_) (2021) main concepts.

The mode of a schema is determined by the closing cadence, that can be either authentic (on the 1st degree) or plagal (on the 5th degree).

# Model

So far, the algorithm will randomly assemble schemata by rolling 2 six-sided dice for each input verse.  