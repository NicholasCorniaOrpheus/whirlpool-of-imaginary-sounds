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
 \time 4/2
  \autoBeamOff
  \set Score.tempoHideNote = ##t
}

ruffo_ingiustissimo_amor_incipit_cantus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Canto" }
	\relative c'{
	\global
	%usage double timesig
	 %\override Score.TimeSignature.stencil =
      %#(double-time-signature  "timesig.mensural44" "3" "")
	\time 4/4
	\clef "petrucci-g2"
	\set Score.timing = ##f
	g'1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

ruffo_ingiustissimo_amor_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
  g'1 f2 e g g g1 r4 c2 c4 b2 a g r4 g2 e4 a g2 \ficta fis4 g2 r4 c a2 g a f e4 c'2 b4 e2 d4 c2 b4 c1 
  r2 c2. b4 b2 a g a r4 g a2 c b a r c d f4 e2 d4 cis!2 r1 r2 b c b e d r b g4 g c2 b b b b c 
  d b1 c2 r r4 c2 c4 b2 a g r4 \small g2 \normalsize c2 a4 d2 g,4 c2 b4 c2 r4 c4 c4. d8 e4 e f2 e r4 c4 c c b4. a8 g1 r2 a b 
  g c b r g c4. b8 a2 g r4 g a2 b c d e2. d4 c2 b a g r g a b c d e2. d4 c2 b a g \small g1 \normalsize \bar"||"


}

ruffo_ingiustissimo_amor_lyrics_cantus = \lyricmode { 
In -- giu -- stis -- si -- m'a -- mor per -- ché sì ra -- ro,
\markup{\italic"per"} -- \markup{\italic"ché"} \markup{\italic"sì"} \markup{\italic"ra"} -- \skip4 \markup{\italic"ro"}
cor -- ri -- spon -- den -- ti fai no -- stri de -- si -- \skip4\skip4 ri
on -- de per -- fi -- d'av -- vien che t'è sì ca -- ro
il di -- scor -- de vo -- ler ch'in doi cor mi -- ri
Ir non mi las -- si al fa -- cil gua -- d'è chia -- ro,
e nel più cie -- co e __ mag -- gior fon -- do ti -- \skip4 ri,
\markup{\italic"e"} \markup{\italic"mag"} -- \markup{\italic"gior"} \markup{\italic"fon"} -- \markup{\italic"do"} \markup{\italic"ti"} -- \markup{\italic"ri"}
da chi de -- sia'l mio_a -- mor tu mi ri -- chia -- mi,
\markup{\italic"tu"} \markup{\italic"mi"} \markup{\italic"ri"} -- \markup{\italic"chia"} -- \markup{\italic"mi"}
e chi m'ha_in o -- dio vuoi ch'a -- dor ed a -- mi,
\markup{\italic"vuoi"} \markup{\italic"ch'a"} -- \markup{\italic"dor"} \markup{\italic"ed"} \markup{\italic"a"} -- \skip4\skip4\skip4\skip4\skip4\skip4 \markup{\italic"mi."}
}

ruffo_ingiustissimo_amor_incipit_altus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c2"
	\set Score.timing = ##f
	e1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

ruffo_ingiustissimo_amor_altus = \relative c'{
  \global
  %I made a mistake, transcribing the part as it would be written in alto clef, instead of mezzo.
  \clef "treble_8"
c1 b2 g c b c r4 e2 d4 c2 b b4 b g a2 g4 a1 r2 e' c2. b4 c2 a4 a2 g4 a c b2 a r d2. c4 c2 b 
a e' e d c d4 a8[b c d] e2 \ficta fis4 e2 e r e f4 a g2 f e r4 c d e f2 e4 e e c f2 e1 r2 r4 c2 e c4 f2 
e2 e e e f f e1 e2 r4 e2 d4 c2 b1 g2 r4 g a2 f4 a2 g4 a2 e r e' f4 d e a,4. g8 g4 a1 r4 e' e e b 
b c2 b c4. d8 e2 c r4 a c b a2 e4 e' d c4. b8 b4 c2 e4 d c e2 e r4 e2 a f f4 e4. d8 c4 d b2 c r4 
e4 d c e2 e r4 e2 a f f4 e4. d8 c4 \small d2 \normalsize b2 \small c1 \normalsize \bar"||"

}

ruffo_ingiustissimo_amor_lyrics_altus = \lyricmode { 
  
  
}

ruffo_ingiustissimo_amor_incipit_tenor = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c3"
	\set Score.timing = ##f
	c1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

ruffo_ingiustissimo_amor_tenor = \relative c'{
  \global
  \clef "treble_8"
  c1 a2 g4. a8 b4 c2 b4 c2 g r g'1 f2 e d e4 g e2 c d c4 c2 a4 b c4. b8 a2 f4 g2 r4 g'2 e4 f2 
  d c r f2. e4 e2 d4 e c2 c4 c2 a4 b4. g8 d'2 g,4 c d2 f4 e2 d4 e2 r r4 a, c b e8[d c b] c[a] e'2 d4 e2 
  e a, e'4 e4. d8[e f] g2 c, r4 b c2 a e' d r4 d d d f1 d c2 g r g'1 f2 e d e r4 c f2 e d c4 
  f4.  e8 e4 f c4. b8 g4 a f g g' g g f e d d2 b c b4 a2 g r4 g'2 f4 g2 e \small d4 \normalsize d2 c a4 c2 b r4 c 
  d d c2 g r4 g'2 f4 e f d e4. d8 c2 b4 c2 g r4 c d d c2 g r4 g'2 f4 e f d e4. d8 c2 b4 \small c1 \normalsize \bar"||"


}

ruffo_ingiustissimo_amor_lyrics_tenor = \lyricmode { 
  
  
}

ruffo_ingiustissimo_amor_incipit_bassus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
	\relative c{
	\global
	\time 4/4
	\clef "petrucci-f3"
	\set Score.timing = ##f
	c1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }


ruffo_ingiustissimo_amor_bassus = \relative c{
  \global
  \clef bass
  c1 d2 e2. c4 g'2 c,4 c'2 b a4 c2 g r4 d e c g'2 c, r4 c' a2 g a f e f d c g' c, r1 r2 c' bes!
  a2 g2. e4 f2 c f e d c g' a4 c b2 a g a4 c2 b4 a2. g4 f2 e1 r2 r4 e2 c' b4 a2 e r1 r2 g g g f  d
  g1 c,4 c'2 b a4 c2 g d e g c, f d c r4 g' a f c'2 f, e d c1 r2 g'2 g4 g e c g'2 c b c a g
  r4 c2 b4 a2 f e e f4 a g2 c,4 c'2 b4 c2. d4 a f g2 a4 f g2 c, e f4 a g2 c,4 c'2 b4 c2. d4 a f g2 a4 f g2 \small c,1 \normalsize \bar"||"

}

ruffo_ingiustissimo_amor_lyrics_bassus = \lyricmode { 
  
  
}