ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }


global = {
 \key c \major
 \time 2/1
  \autoBeamOff
}

madrigalist_wuerfelspiel_incipit_cantus = \markup { \score {
	{
	  \new MensuralVoice<<
	\set Staff.instrumentName = \markup { "Canto" }
	\key c \major

	\clef "petrucci-g2"
	% \omit Score.BarLine
	 \set Score.timing = ##f
	%\override Staff.NoteHead.style = #'neomensural
	\time 2/2
	r\breve
	s
	
	  >>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
      
  }

                                        }  \hspace #1 }
	


madrigalist_wuerfelspiel_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
 
}

madrigalist_wuerfelspiel_lyrics_cantus = \lyricmode { 

}

madrigalist_wuerfelspiel_incipit_altus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\key c \major
	\clef "petrucci-c2"
	\set Score.timing = ##f
	%\override Staff.NoteHead.style = #'petrucci
	%\override Rest.style = #'mensural
	%\override TimeSignature.style = #'neomensural
	\time 2/2
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

madrigalist_wuerfelspiel_altus = \relative c'{
  \global
  \clef "treble_8"

}

madrigalist_wuerfelspiel_lyrics_altus = \lyricmode { 


}

madrigalist_wuerfelspiel_incipit_tenor = \markup { 
  \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
	\set Score.timing = ##f
	\clef "petrucci-c3"
	\time 2/2
	r2
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

madrigalist_wuerfelspiel_tenor = \relative c'{
  \global
  \clef "treble_8"

}

madrigalist_wuerfelspiel_lyrics_tenor = \lyricmode { 


}

madrigalist_wuerfelspiel_incipit_bassus = \markup { 
  \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
	\set Score.timing = ##f
	\clef "petrucci-f3"
	\time 2/2
	g1
	
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }


madrigalist_wuerfelspiel_bassus = \relative c{
  \global
  \clef bass

  
  
  
}

madrigalist_wuerfelspiel_lyrics_bassus = \lyricmode { 


}