
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is a template based on the usual four part choir templater %
% where the voices have common lyrics at the the start but split  %
% to separate lyrics after a while.				  %
% This template is modyfied by AS from the one in the lilypond    %
% documentation.						  %
% This template is to be used for instance for fairly simple      %
% settings where the stanzas are set homophonicaly but twhere the %
% Chorus contains polyphony that require separate underlay for    %
% the different voices.						  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.0"
\include "deutsch.ly"
ficta = \once \set suggestAccidentals =##t
\header {
  title = "Monti selve fontane"
  subtitle = "from Madalena Casulana: Il Secondo Libro de Madrigali... 1570"
  composer = "Madalena Casulana"
  arranger = "ed. Andreas Stenberg"	
  poet = ""
  meter =""
  copyright = \markup {"Copyright " \char ##x00A9   2018 " by Andreas Stenberg" }
  tagline =""
}
global = {
  \key c \major
}

sopMusic = \relative c'' {

  \set Score.tempoHideNote = ##t
  \tempo 2 = 86
  \time 4/4
  \set Timing.measureLength = #(ly:make-moment 4/2)
  \override Staff.BarLine.transparent = ##t
  a1 e'1
  r4 e2 cis2 d4 a4 h4
  c2. c4 c1
  a2									%% end of first line in orig.
  r4 e'2 d4 e2 
  cis4 cis!4 d4. d8 e4 f4 d2
  e2									%% end of second line
  r4 c4 c4. c8 c4 a4
  c2 r4 e4 g2 f2~
  f2 e2.\melisma d8 c8 d2\melismaEnd 
  e2 r4 h4 cis4 d4							%% end of third line
 h4 h4 
 h4. h8 h4 h4 e,2  e4 e'4~
 e8 e8 e4 dis2 e2 r4 e4
 a,4. a8 a2. e4								%% end o fourth line
 f2 
 e4 e'4 e4. e8 cis4 cis!4 d4. a8
 h4 h4 c2 h4 h4 h4. h8
 gis4 gis!4								%% end of fifth line
 \set Timing.measureLength = #(ly:make-moment 6/2)
  a4. e8 fis2 a2
 a1 
 \cadenzaOn
 a\longa
 \revert Staff.BarLine.transparent
  \bar "||"
}
sopWords = \lyricmode {
  Mon -- ti sel -- ve fon -- ta -- ne piagg' e sas -- si
  Vo cer -- cand' io se pur po -- tess' un gior -- no
  In par -- te ra -- len -- tar l'ac -- cer -- bo pian -- to
  Ma ben vegg' hor che sol' in u -- na val -- le
  Tro -- vo ri -- po -- so a le mie stan -- che ri -- me
  Che mor -- mo -- ran -- do van per mil -- le cam -- pi,
  [Che mor -- mo -- ran -- do van per mil -- le cam -- pi.]
}
altoMusic = \relative c' {
  \override Staff.BarLine.transparent = ##t
  r1 c'1
  h2 r4 e4 e4 a,4 d2
  g,2 a1 g2
  c2 c,2								%% end of first line in orig.
  r4 a'2 gis4
  a4 e4 fis4 g4. g8 c2 h4
  c2 g4 e4								%% end of second line
  f4. f8 e4 f4 
  g2 c2 c2 a2
  a\breve
  gis2 r4 gis!4 a4 a4 d,4 e4
  gis4. gis!8								%% end of third line
  gis!4. gis!8 a2 a4 c4~
  c8 c8 c4 h2 gis2 r4 a4
  e4. e8 fis2 a2 a2~
  a2 cis2 r4 e4								%% end of fourth line
  a,4. d8
  d4 d4 g,4. g8 g4 g4 g2 
  \set Timing.measureLength = #(ly:make-moment 6/2)
  h4 h4 e,4. e8 a4 a4 fis4. fis!8
  a4 e4 \ficta fis!2 
  \cadenzaOn
  e\longa
  \revert Staff.BarLine.transparent
}
altoWords = \lyricmode {
  Mon -- ti sel -- ve fon -- ta -- ne piagg' e sas -- si
  Vo cer -- cand' io se pur po -- tess' un gior -- no
  In par -- te ra -- len -- tar l'ac -- cer -- bo pian -- to
  Ma ben vegg' hor che sol' in u -- na val -- le
  Tro -- vo ri -- po -- so a le mie stan -- che ri -- me
  Che mor -- mo -- ran -- do van per mil -- le cam -- pi,
  [Che mor -- mo -- ran -- do van per mil -- le cam -- pi.]
}
tenorMusic = \relative c' {
  \clef "G"
  \override Staff.BarLine.transparent = ##t
  r1 a'1
  gis2 r4 a2 fis2 g4
  e2 e4 f4. c8 f4.\melisma e16 d16 e4\melismaEnd			%% end of first line in orig.
   f4 a2 g4 a2 h!2
   r4 a4 a4 h4 c4 a4 g2 
   g2									%% end of second line
   r4 g4 a4. a8 g4 f4
   e2 e1 d2~
   d2 c2 a1
   h4 h4 e2. fis4 g4 g4
   e4. e8								%% end of third line
   e4 e4 cis2 cis!4 a'4. a8 a4
   fis2 e2 r4 cis4 cis!4. cis!8
   d2 e2 d2 cis2							%% end of fifth line
   r4 a'4 a4. a8 fis4 fis!4 g4. d8
   e4 e4 d2 d4 e4 \set Timing.measureLength = #(ly:make-moment 6/2)
  e4. e8
   cis4 cis4								%% end of sixth line
   d4. a8 d2 
   e2 d2 
   \cadenzaOn
   cis\longa
 \revert Staff.BarLine.transparent
}
tenorWords = \lyricmode {
  Mon -- ti sel -- ve fon -- ta -- ne piagg' e sas -- si
  Vo cer -- cand' io se pur po -- tess' un gior -- no
  In par -- te ra -- len -- tar l'ac -- cer -- bo pian -- to
  Ma ben vegg' hor che sol' in u -- na val -- le
  Tro -- vo ri -- po -- so a le mie stan -- che ri -- me
  Che mor -- mo -- ran -- do van per mil -- le cam -- pi,
  [Che mor -- mo -- ran -- do van per mil -- le cam -- pi.]
}
bassMusic = \relative c {
  \override Staff.BarLine.transparent = ##t
  r1 a'1
  e'2 r2 r4 d4  d4 g,4 
  c2 a4 f2 a4 c2							%% end of first line in orig.
  f,4 f'2 e4 f2 e2
  r4 a,4 d4 g,4 c4 f,4 g2 
  c2									%% end of second line
  r4 c4 f,4. f8 c'4 d4
  c2 a2 e2 f2
  a2.\melisma g4 f1\melismaEnd
  e2 r4 e4 a4 d,4 g4 e4							%% end of third line
  e4. e8 e4 e4 a2 a4 a4~
  a8 a8 a4 h!2 e,2 r4 a4
  a4. a8 d,2 cis2 d2
  a'2 r4 a4								%% end of fourth line
  a4. a8 d4 d4
  g,4. g8 c4 c4 g2 g4 e4
  \set Timing.measureLength = #(ly:make-moment 6/2)
  e4. e8 a4 a4 d,4. d8 d2
  cis2 d2 
  \cadenzaOn
  a'\longa
  \revert Staff.BarLine.transparent
}
bassWords = \lyricmode {
  Mon -- ti sel -- ve fon -- ta -- ne piagg' e sas -- si
  Vo cer -- cand' io se pur po -- tess' un gior -- no
  In par -- te ra -- len -- tar l'ac -- cer -- bo pian -- to
  Ma ben vegg' hor che sol' in u -- na val -- le
  Tro -- vo ri -- po -- so a le mie stan -- che ri -- me
  Che mor -- mo -- ran -- do van per mil -- le cam -- pi,
  Che mor -- mo -- ran -- do van per mil -- le cam -- pi.
}
incipitDiscantus = \markup {
  \score {
    {
      %      \set Staff.instrumentName = #"Tenor "
      \override NoteHead.style = #'neomensural
      \override Rest.style = #'neomensural
      \override Staff.TimeSignature.style = #'mensural
      \cadenzaOn
      \clef "petrucci-g"
      \key c \major
      \time 4/4

      a'1 ^\markup { \smallCaps"Canto"} _"MOnti selue "
       e''1 r4 e''2
    }
    \layout {
      \context {
        \Voice
        \remove "Ligature_bracket_engraver"
        \consists "Mensural_ligature_engraver"
      }
      line-width = 4.5\cm
    }
  }
}


incipitAltus = \markup {
  \score {
    {
      %      \set Staff.instrumentName = #"Tenor "
      \override NoteHead.style = #'neomensural
      \override Rest.style = #'neomensural
      \override Staff.TimeSignature.style = #'mensural
      \cadenzaOn
      \clef "petrucci-c1"
      \key c \major
      \time 4/4
      r1^\markup \smallCaps"Alto"c''1_"MOnti  "
       h'2 
    }
    \layout {
      \context {
        \Voice
        \remove "Ligature_bracket_engraver"
        \consists "Mensural_ligature_engraver"
      }
      line-width = 4.5\cm
    }
  }
}


incipitTenor = \markup {
  \score {
    {
      %      \set Staff.instrumentName = #"Tenor "
      \override NoteHead.style = #'neomensural
      \override Rest.style = #'neomensural
      \override Staff.TimeSignature.style = #'mensural
      \cadenzaOn
      \clef "petrucci-c2"
      \key c \major
      \time 4/4
      r1 ^\markup \smallCaps"Tenor" a'1_"MOnti'"
      gis'2
    }
    \layout {
      \context {
        \Voice
        \remove "Ligature_bracket_engraver"
        \consists "Mensural_ligature_engraver"
      }
      line-width = 5.0\cm
    }
  }
}
#(append! supported-clefs '(("mensural-f3" . ("clefs.mensural.f" 0 0))))

incipitBassus = \markup {
  \score {
    {
      %      \set Staff.instrumentName = #"Tenor "
      \override NoteHead.style = #'neomensural
      \override Rest.style = #'neomensural
      \override Staff.TimeSignature.style = #'mensural
      \cadenzaOn
      \clef "petrucci-c4"
      \key c \major
      \time 2/2
      r1^\markup \smallCaps"Basus"a1_"MOnti '"
      e'2  
    }
    \layout {
      \context {
        \Voice
        \remove "Ligature_bracket_engraver"
        \consists "Mensural_ligature_engraver"
      }
      line-width = 4.5\cm
    }
  }
}


\score {
  <<
    \new StaffGroup \with {
      \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 12))
    } <<
      \new Staff = treble <<
        \set Staff.instrumentName = \incipitDiscantus
        \new Voice = "sopranos" {
          \set  Staff.midiInstrument ="choir aahs"
          %	\voiceOne
          << \global \sopMusic >>
        }
      >>
      \new Lyrics = sopranos { s1 }

      \new Staff = "medius" <<
        \set Staff.instrumentName = \incipitAltus

        \new Voice = "altos" {
          %	\voiceTwo
          \set  Staff.midiInstrument ="choir aahs"
          << \global \altoMusic >>
        }
      >>

      \new Lyrics = "altos" { s1 }
      \new Staff = tenors <<
        \set Staff.instrumentName = \incipitTenor

        \clef "treble"
        \new Voice = "tenors" {
          \set  Staff.midiInstrument ="choir aahs"
          %	\voiceOne
          << \global \tenorMusic >>
        }
      >>
      \new Lyrics = "tenors" { s1 }

      \new Staff ="basses" {
        \set Staff.instrumentName = \incipitBassus

        \new Voice = "basses" {
          \set  Staff.midiInstrument ="choir aahs"
          \clef "bass"
          %	\voiceTwo
          << \global \bassMusic >>
        }
      }
    >>
    \new Lyrics = basses { s1 }

    \context Lyrics = sopranos \lyricsto sopranos \sopWords
    \context Lyrics = altos \lyricsto altos \altoWords
    \context Lyrics = tenors \lyricsto tenors \tenorWords
    \context Lyrics = basses \lyricsto basses \bassWords
  >>
  \layout {
    \context {
      \Score
      % no bars in staves
      %      \override BarLine.transparent = ##t

    }
    % the next three instructions keep the lyrics between the bar lines
    \context {
      \Lyrics
      \consists "Bar_engraver"
      \override BarLine.transparent = ##t
    }
    \context {
      \StaffGroup
      \consists "Separating_line_group_engraver"
    }
    \context {
      \Voice
      % no slurs
      \override Slur.transparent = ##t
      % Comment in the below "\remove" command to allow line
      % breaking also at those barlines where a note overlaps
      % into the next bar.  The command is commented out in this
      % short example score, but especially for large scores, you
      % will typically yield better line breaking and thus improve
      % overall spacing if you comment in the following command.
      %\remove "Forbid_line_break_engraver"
    }
    indent = 4.5\cm
  }
 
}
\score {
  <<
    \new StaffGroup <<
      \new Staff = treble <<
        \set Staff.instrumentName = \incipitDiscantus
        \new Voice = "sopranos" {
          \set  Staff.midiInstrument ="choir aahs"
          %	\voiceOne
          << \global \sopMusic >>
        }
      >>
      \new Lyrics = sopranos { s1 }

      \new Staff = "medius" <<
        \set Staff.instrumentName = \incipitAltus

        \new Voice = "altos" {
          %	\voiceTwo
          \set  Staff.midiInstrument ="choir aahs"
          << \global \altoMusic >>
        }
      >>

      \new Lyrics = "altos" { s1 }
      \new Staff = tenors <<
        \set Staff.instrumentName = \incipitTenor

        \clef "treble"
        \new Voice = "tenors" {
          \set  Staff.midiInstrument ="choir aahs"
          %	\voiceOne
          << \global \tenorMusic >>
        }
      >>
      \new Lyrics = "tenors" { s1 }

      \new Staff ="basses" {
        \set Staff.instrumentName = \incipitBassus

        \new Voice = "basses" {
          \set  Staff.midiInstrument ="choir aahs"
          \clef "G_8"
          %	\voiceTwo
          << \global \bassMusic >>
        }
      }
    >>
    \new Lyrics = basses { s1 }

    \context Lyrics = sopranos \lyricsto sopranos \sopWords
    \context Lyrics = altos \lyricsto altos \altoWords
    \context Lyrics = tenors \lyricsto tenors \tenorWords
    \context Lyrics = basses \lyricsto basses \bassWords
  >>
  \midi {}
}
\paper {
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  ragged-last = ##t
}

%{
convert-ly.py (GNU LilyPond) 2.18.2  convert-ly.py: Processing `'...
Applying conversion: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
2.17.29, 2.17.97, 2.18.0
%}
