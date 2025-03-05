\version "2.24.0"
\language "english"

bassus = {d\breve a1 gs2 fs2 gs1 a1}

diatonicScale = \relative { c' d e f g a b }

global = {
 \key c\major
 \time 2/1
 \autoBeamOff
 \clef bass
}

\modalTranspose c g' \diatonicScale {\global \bassus }