\version "2.18.2"

ficta = { \once \set suggestAccidentals = ##t }


%define proportion mensurations!
#(define ((double-time-signature glyph a b) grob)
   (grob-interpret-markup grob
          (markup #:override '(baseline-skip . 2.5) #:number
                  (#:line ((markup (#:fontsize 4 #:musicglyph glyph))
                           (#:fontsize -1 #:column (a b)))))))

global = {
 \key f \major
 
 \time 3/1
  \autoBeamOff
  \set Score.tempoHideNote = ##t
}

pesenti_inhospitas_per_alpes_incipit_cantus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { \italic "Cantus" }
	\relative c'{
	\global
	%usage double timesig
	 %\override Score.TimeSignature.stencil =
      %#(double-time-signature  "timesig.mensural44" "3" "")
	\time 3/4
	\clef "petrucci-c1"
	\set Score.timing = ##f
	r2
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

pesenti_inhospitas_per_alpes_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
  r2 g' bes2. g4 a2 g a1 bes2 a c2. bes4 a2 g f f r bes a c4 bes a g f e f2 g e f g1 a g 
  r2 bes a c4 bes a g f e f2 g e f d g1 \ficta fis2 g1 \bar"||"
  
 

}

pesenti_inhospitas_per_alpes_lyrics_cantus_one = \lyricmode { 
In -- ho -- spi -- tas per al -- pes
Per hor -- ri -- dos re -- ces -- sus
Me -- ren -- \skip4\skip4 ti __ \skip4 pe -- \skip4 de fes -- sus 
e -- va -- ga -- bor,
Me -- ren -- \skip4\skip4 ti __ \skip4 pe -- \skip4 de fes -- sus 
e -- va -- ga -- \skip4 bor
}

pesenti_inhospitas_per_alpes_lyrics_cantus_two = \lyricmode { 

}

pesenti_inhospitas_per_alpes_lyrics_cantus_three = \lyricmode { 


}

pesenti_inhospitas_per_alpes_lyrics_cantus_four = \lyricmode { 

}

pesenti_inhospitas_per_alpes_incipit_altus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Altus" }
	\relative c'{
	\global
	\time 3/4
	\clef "petrucci-c3"
	\set Score.timing = ##f
	r2
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

pesenti_inhospitas_per_alpes_altus = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
  r2 d d d d d d1 d2 d g1 r4 f,2 g4 a2 a bes1 c2 c c a a c g a c d d1 d g 
  c,2 c c a a g g d'2 d c d1 \ficta b1

 
}

pesenti_inhospitas_per_alpes_lyrics_altus = \lyricmode { 
  
  
}

pesenti_inhospitas_per_alpes_incipit_tenor = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenor" }
	\relative c'{
	\global
	\time 3/4
	\clef "petrucci-c3"
	\set Score.timing = ##f
	r2
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

pesenti_inhospitas_per_alpes_tenor = \relative c'{
  \global
  \clef "treble_8"
  r2 g'2 g2. e4 f2 g1 \ficta fis2 g2 \ficta f e2. d4 c2 c d d d2. e4 f2 f2. e4 d c d2 e c d e g1 \ficta fis2 g1 
  d2. e4 f2 f f4 e d c d2 bes c a bes g a1 g
 
}

pesenti_inhospitas_per_alpes_lyrics_tenor = \lyricmode { 
  
  
}

pesenti_inhospitas_per_alpes_incipit_bassus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Bassus" }
	\relative c{
	\global
	\time 3/4
	\clef "petrucci-f4"
	\set Score.timing = ##f
	r2
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }


pesenti_inhospitas_per_alpes_bassus = \relative c{
  \global
  \clef bass
  r2 g' g g d g d1 g2 d2 c2. d8[e] f2 e d d g1 f2 f f f d c e d c g'2 d1 g
  g f2 f f f d g c, d g e d1 g,

}

pesenti_inhospitas_per_alpes_lyrics_bassus = \lyricmode { 
  
  
}