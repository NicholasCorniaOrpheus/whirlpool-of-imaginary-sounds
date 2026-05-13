\version "2.18.2"

ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }

%define proportion mensurations!
#(define ((double-time-signature glyph a b) grob)
   (grob-interpret-markup grob
          (markup #:override '(baseline-skip . 2.5) #:number
                  (#:line ((markup (#:fontsize 4 #:musicglyph glyph))
                           (#:fontsize -1 #:column (a b)))))))

global = {
 \key c \major
 \time 2/1
  \autoBeamOff
  \set Score.tempoHideNote = ##t
}

gero_la_la_maistre_pierre_incipit_cantus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Cantus" }
	\relative c'{
	\global
	%usage double timesig
	 %\override Score.TimeSignature.stencil =
      %#(double-time-signature  "timesig.mensural44" "3" "")
	\time 2/2
	\clef "petrucci-c4"
	\set Score.timing = ##f
	d1
	
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

gero_la_la_maistre_pierre_cantus = \relative c'{
 \global
  \clef "treble_8"
  %\clef treble
d1 b c2. b4 a2 g d' e2. d4 c b c b a g a1 g\breve. r1 c2. c4 c2 c d e f c1 c d2 e d1 \ficta cis2 d1 
d2. d4 d2 d e e d b r a b c d4 c b a g2 a b c2. b4 a g a1 g2 d' d4 d b d c b a g a2 b 
c4 b a g a1 g g2 g b b a2. b4 c2 g4 a b c d c a b c d e2 f \pageBreak e d1 \ficta cis2 d1 a2. a4 a2 a b b a d2. \ficta cis4 \ficta cis b 
d2 d c a b4 c d b c2 d b4 a b c d b c2. b4 a g a1 g2 d'1 b2 c2. b4 a2 g d' e2. d4 c b c b a g a1 \small g\breve \bar"||"

}

gero_la_la_maistre_pierre_lyrics_cantus = \lyricmode { 
La la mai -- stre pier -- re
  la la __ \skip4\skip4\skip4 bu -- \skip4\skip4\skip4 vons don  __
  En re -- ve -- nant de sant -- ter -- re __
  la la mai -- stre pier -- re
  je m'as -- sis sur u -- ne pier -- re
  au -- pres de moy __ \skip4\skip4\skip4\skip4 ung fla -- scon __ \skip4\skip4\skip4\skip4\skip4
  la la la la la mai -- stre pier -- re
  la la bu -- \skip4\skip4\skip4 vons don pour e -- vi -- ter le cat -- te -- re __ \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4
  la la mai -- stre pier -- re
  a ce fla -- scon feist la guer -- \skip4\skip4\skip4\skip4 re
  en men -- giant dung __ \skip4\skip4\skip4\skip4 gras giam -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 bon
  la la mai -- stre pier -- re
  la la __ \skip4\skip4\skip4 bu -- \skip4\skip4\skip4 vons don. 
        
  
}


gero_la_la_maistre_pierre_incipit_tenor = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenor" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-c4"
	\set Score.timing = ##f
	r1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

gero_la_la_maistre_pierre_tenor = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
 r1 g1 e2 f1 e2 d2 c g' a2. g4 g1 \ficta fis2 g1 c,2. c4 c2 c d e f c1 f g2 a2. g4 f e f1 e4 d 
 c2 d e1 d2 g1 \ficta fis2 g1 g2. g4 g2 g a a g e r d e f g a2. g4 g1 \ficta fis2 g1 g2 g4 g e g f e d c g'2
 a g1 \ficta fis2 g1 r d2 d f f e2. f4 g2 d4 e f g a f g2 a g4 f e d e1 d\breve. d2. d4 d2 d e e d g2. \ficta fis4 \ficta fis e
 g2 g f d e4 f g e f g a2. g4 g1 \ficta fis2 g1 g e2 f1 e2 d c g' a2. g4 g1 \ficta fis2 \small g\breve \bar"||"
 
}

gero_la_la_maistre_pierre_lyrics_tenor = \lyricmode { 
La la mai -- stre pier -- re
  la la __ \skip4 bu -- vons don 
  En re -- ve -- nant de sant -- ter -- re
  la la mai -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4 stre pier -- \skip4\skip4\skip4 re
  je m'as -- sis sur u -- ne pier -- re
  au -- pres de moy ung  fla -- scon __ \skip4\skip4
  la la la la la mai -- stre pier -- re
  la la bu -- vons don pour e -- vi -- ter le cat -- te -- re \skip4\skip4\skip4\skip4\skip4
  la la mai -- \skip4 stre __ \skip4 pier -- re __
  a ce fla -- scon feist la guer -- \skip4\skip4\skip4\skip4 re
  en men -- giant dung __ \skip4\skip4\skip4\skip4\skip4 gras giam -- bon __ \skip4\skip4
  la la mai -- stre pier -- re
  la la __ \skip4 bu -- vons don.
}