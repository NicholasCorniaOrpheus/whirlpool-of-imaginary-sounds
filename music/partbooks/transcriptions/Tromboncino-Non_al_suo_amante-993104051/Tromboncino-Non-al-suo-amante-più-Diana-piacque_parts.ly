\version "2.18.2"

ficta = { \once \set suggestAccidentals = ##t }


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

tromboncino_non_al_suo_amante_piu_diana_incipit_cantus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { \italic "Cantus" }
	\relative c'{
	\global
	%usage double timesig
	 %\override Score.TimeSignature.stencil =
      %#(double-time-signature  "timesig.mensural44" "3" "")
	\time 2/2
	\clef "petrucci-c2"
	\set Score.timing = ##f
	f1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

tromboncino_non_al_suo_amante_piu_diana_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
  f1 e2 f g g a a g f d1 \ficta cis r2 g' \break g f e e e1 c b c2 d1 \ficta cis2 d1 \break r f e2 f g g
  a a g f d1 \ficta cis \break r2 g' g f e e e1 c b c2 d1 \ficta cis2 d1 r2 f e f g g e g f1 g2 a1 \ficta gis2 a1 r2 a \break
  g f g e1 d2 e1 d2 c1 b2 a a 
  r2 d b d d \ficta cis d1 e2. d4 c2 d d2. \ficta cis4 d1 r2 f f f g g a1 g f2 g e1 d r2 e e f e d \ficta cis d
  \ficta bes g4 a \ficta bes c d \ficta bes c2 d2 d2. \ficta cis4 d\longa*1/4 \bar"||"
 

}

tromboncino_non_al_suo_amante_piu_diana_lyrics_cantus_one = \lyricmode { 
Non al suo~a -- man -- te più Di -- a -- na piac -- que
quan -- do per tal ven -- tu -- ra tut -- ta~i -- gnu -- \skip4 da
la vi -- de~in mez -- zo del -- le ge -- li -- de~ac -- que
che~a me la pa -- sto -- rel -- la~al -- pe -- stra~e cru -- \skip4 da
po -- sta~a ba -- gnar un leg -- gia -- dret -- to ve -- \skip4 lo
che~al -- l'au -- ra~il va -- go __ e bion -- do ca -- pel chiu -- da
tal che mi fe -- ce hor qua -- nd'e -- gli~ar -- de~il cie -- \skip4 lo
tut -- to tre -- mar d'un a -- mo -- ro -- so ge -- lo,
tut -- to tre -- mar d'un a -- mo -- ro -- so __ \skip4\skip4\skip4\skip4\skip4\skip4\skip4 ge -- \skip4 lo
}





tromboncino_non_al_suo_amante_piu_diana_incipit_altus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Altus" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c4"
	\set Score.timing = ##f
	a1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

tromboncino_non_al_suo_amante_piu_diana_altus = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
  a1 a2 a c c c c c a g1 e r2 c'2 c a a a g1 c, d a'2 g a1 a r a a2 a c c c c c a 
  g1 e r2 c' c a a a g1 c, d a'2 g a1 a r2 a a a g g g c a1 e'2 d e1 c1 r2 e e d e, g g1 g g2 e' e1 e2 e 
  d2 a d2 c4 b a1 a c c2 g a1 a r2 a a a c c c1 c f,2 bes! a1 a r2 c c c c c a a d1 \ficta bes1 a\breve a\longa*1/4 \bar"||"

 
}

tromboncino_non_al_suo_amante_piu_diana_lyrics_altus = \lyricmode { 
  
  
}

tromboncino_non_al_suo_amante_piu_diana_incipit_tenor = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenor" }
	\relative c'{
	\global
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

tromboncino_non_al_suo_amante_piu_diana_tenor = \relative c'{
  \global
  \clef "treble_8"
  d1 c2 d e e f f e d b1 a r2 e' e d c c c g1 f2 g2. f4 e2 d e1 d r d' c2 d e e f f e d b1
  a r2 e' e d c c c g1 f2 g2. f4 e2 d e1 d r2 d' c d b b c e d2. c4 b2 a b1 a r2 c c a b c1 b2 c1 b2 a1 \ficta gis2 a a 
  f2 f g2. f4 e2 e f1 g a2 d, e1 d r2 d' d d e e f1 e4 d c b a2 d d2. \ficta cis4 d1 r2 g, g a g f e f g1. f2 e d e1 d\longa*1/4 \bar"||"
 
}

tromboncino_non_al_suo_amante_piu_diana_lyrics_tenor = \lyricmode { 
  
  
}

tromboncino_non_al_suo_amante_piu_diana_incipit_bassus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Bassus" }
	\relative c{
	\global
	\time 4/4
	\clef "petrucci-f4"
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


tromboncino_non_al_suo_amante_piu_diana_bassus = \relative c{
  \global
  \clef bass
  %Folia! 
  d1 a2 d c c f f c d g,1 a r2 c c d a a c1 a g a2 \ficta bes2 a1 d r d a2 d c c f f c d g,1 a r2 c 
  c d a a c1 \small a  \normalsize g a2 \ficta bes a1 d r2 d a d e e c1 d e2 f e1 a, r2 a c d g, c g1 c g2 a e'1 a,2 a
  d2 d g, g a a d1 c a2 \ficta bes a1 d r2 d d d c c f1 c d2 g, a1 d r2 c c f c d a d g,1 g a\breve d\longa*1/4 \bar"||"

}

tromboncino_non_al_suo_amante_piu_diana_lyrics_bassus = \lyricmode { 
  
  
}