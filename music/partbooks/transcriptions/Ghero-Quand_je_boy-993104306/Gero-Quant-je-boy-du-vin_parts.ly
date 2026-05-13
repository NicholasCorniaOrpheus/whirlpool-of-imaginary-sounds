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
 \key f \major
 \time 2/1
  \autoBeamOff
  \set Score.tempoHideNote = ##t
}

gero_quant_je_boy_du_vin_incipit_cantus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Cantus" }
	\relative c'{
	\global
	%usage double timesig
	 %\override Score.TimeSignature.stencil =
      %#(double-time-signature  "timesig.mensural44" "3" "")
	\time 2/2
	\clef "petrucci-c2"
	\set Score.timing = ##f
	r\breve
	
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

gero_quant_je_boy_du_vin_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
r\breve c2. d4 e f g e f2 a1 g2 g f4 g a bes c a bes2 a4 g f2 c4 d e f g e f2 a 
g f1 e2 f1 r2 f2. f4 e2 e d1 f2. f4 e2 e d1 d2 g4 f e d c bes a2 d c1 \ficta b2 c1 c2 f2. e4 d c 
bes a g2 c c2. \ficta b4 \ficta b2 c1. c2 d e f1. c2 d e f c d e f e4 d c2 c d e f1. a2 a g2. f4 f1 e2
f2 a a g2. f4 f1 e2 f1. c2 c4 d e f g e f2 a g g g, g4 a bes c d bes c2 c c4 d e f g e 
f2 a1 g2. f4 f1 e2 f c c4 d e f g e f2 a g2. f4 f1 e2 \small f\breve \bar"||" 
}

gero_quant_je_boy_du_vin_lyrics_cantus = \lyricmode { 
   Quant je boy du vin cla -- ret tout tour -- ne,
\markup{\italic"quant"} \markup{\italic"je"} \markup{\italic"boy"} \markup{\italic"du"} \markup{\italic"vin"} \markup{\italic"cla"} -- \markup{\italic"ret"} \markup{\italic"tout"} \markup{\italic"tour"} -- \markup{\italic"ne,"}
quant je boy du vin cla -- ret tout tour -- \skip4\skip4 ne
quant je nen boy point tout ne tour -- ne point
        et quant nai mail -- le ne de -- nier
        je nen boy point
        ne bel -- le fil -- le_a mon cou -- cher
        tout ne tour -- ne point
        et quant de ce __ vin blanc je bois
        si ne sont da -- niou __ \skip4\skip4\skip4
        ou dar -- bois point ne ma __ \skip4 tour -- \skip4 ne
        point ne ma __ \skip4 tour -- \skip4 ne
        mais quant je boy du vin cla -- ret tout tour -- ne,
        \markup{\italic"tout"} \markup{\italic"tour"} -- \skip4\skip4\skip4\skip4\skip4 \markup{\italic"ne,"}
        mais quant je boy du vin cla -- ret tout tour -- \skip4\skip4\skip4 ne,
        mais quant je boy du vin cla -- ret tout tour -- \skip4\skip4\skip4 ne.

  
}


gero_quant_je_boy_du_vin_incipit_tenor = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenor" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-f3"
	\set Score.timing = ##f
	c,2.
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

gero_quant_je_boy_du_vin_tenor = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
c,2. d4 e f g e f2 a g g f2. g4 a bes c a bes2 d c1 bes2 f2. g4 a bes c a bes2 d c 
bes4 a g f g1 f2 bes2. bes4 a2 a g1 bes2. bes4 a2 a g1 g2 bes4 a g f e d c1 f2. e4 d c d2 d c1 r2 f 
bes2. a4 g f e d c2 f e4 c d2 c1. f1 g2 a bes1 a2 g g f1. c2 d e f a g g f d' d1 
c2 bes2. a4 g f g2. f8[e] d4 e f g a bes c a bes a g f g1 f2 f f2. g4 a bes c a bes2 d c c 
c, c4 d e f g e f2 f f4 g a bes c a bes2 d c2. bes4 g a bes a g f g1 f4 f f g a bes c a 
bes2 d c2. bes8[a] bes4 a g f g1 \small f\breve \bar"||"
}

gero_quant_je_boy_du_vin_lyrics_tenor = \lyricmode { 
Quant je boy du vin cla -- ret tout tour -- ne,
\markup{\italic"quant"} \markup{\italic"je"} \markup{\italic"boy"} \markup{\italic"du"} \markup{\italic"vin"} \markup{\italic"cla"} -- \markup{\italic"ret"} \markup{\italic"tout"} \markup{\italic"tour"} -- \markup{\italic"ne,"}
quant je boy du vin cla -- ret tout tour -- \skip4\skip4\skip4\skip4\skip4 ne
quant je nen boy point tout ne tour -- ne point
        et quant nai mail -- le ne de -- nier
        Je __ \skip4\skip4\skip4 nen boy point
        ne bel -- le fil -- le_a mon cou -- cher
        tout ne tour -- ne point
        et __ quant de ce vin blanc je bois
        si ne sont da -- niou
        ou dar -- bois point ne ma tour -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 ne
        mais quant je boy du vin cla -- ret tout tour -- ne,
        \markup{\italic"tout"} \markup{\italic"tour"} -- \skip4\skip4\skip4\skip4\skip4 \markup{\italic"ne,"}
        mais quant je boy du vin cla -- ret tout tour -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 ne,
        mais quant je boy du vin cla -- ret tout tour -- \skip4\skip4\skip4\skip4\skip4\skip4 ne.
}