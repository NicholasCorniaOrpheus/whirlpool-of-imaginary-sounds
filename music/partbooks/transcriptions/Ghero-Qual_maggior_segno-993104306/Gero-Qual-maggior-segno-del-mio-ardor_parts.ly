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

gero_qual_maggior_segno_incipit_cantus = \markup { \score {
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

gero_qual_maggior_segno_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
  r\breve r1 c1 d2 c d d e2. f4 g2 a2. g4 g1 \ficta fis2 g g g e f g a1 g2 a1 g4 f e1 r2 d e f 
  d g2. f4 e d c2 d e1 r2 c d d e1 c2 f e d1 c2 d2. e4 f2 g4 f e d f2 e d1 \ficta cis2 d2 d1 e2 f d 
  d2 g2. f4 e d c2 d2. c4 c1 \ficta b2 c1 a'1. g2 f1 e\breve \pageBreak a1 a2 g f2. e8[d] e2 e d g2. \ficta fis8[e] fis2 g1 r2 g g g a g 
  e4 g g e f2 g c,4 d e f g2 a2. g4 g1 \ficta fis2 g\breve r2 g g g e f g2. f8[e] d1 e f1. f2 e g f e c g'4 f 
  e2 d2. c4 c1 \ficta b2 c\breve \pageBreak r2 c c c \ficta b4 a \ficta b c d e f2 e d1 \ficta cis2 d1 r2 d e f g d e f g a2. g4 g1 \ficta fis2 g1 
  r2 g a f g e d f e d2. c4 c1 \ficta b2 c2 a g g' a f g e d f e d2. c4 c1 \ficta b2 \small c\breve \bar"||"
}

gero_qual_maggior_segno_lyrics_cantus = \lyricmode { 
Qual mag -- gior se -- gno del mio_ar -- dor vo -- \skip4 le -- \skip4 te
        Dol -- ce ne -- mi -- ca mi -- \skip4\skip4\skip4\skip4 a s'a po -- c'a po --  \skip4\skip4\skip4\skip4\skip4\skip4 co
        Qual Me -- le -- a -- gro per vir -- tù di fo -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 co
        Con -- su -- mar d'hor in hor __ \skip4\skip4\skip4\skip4 mi  ve -- dre -- \skip4 te
        Las -- s'in -- gra -- ta __ ben so che v'ac -- cor -- ge -- \skip4\skip4\skip4\skip4\skip4 te
        Che per voi mil -- le vol -- \skip4\skip4\skip4\skip4 t'el dì __ \skip4\skip4\skip4\skip4 mo -- \skip4\skip4\skip4 ro __
        Né per dar -- mi ri -- sto -- \skip4 ro
        Pie -- to -- s'un qua vi vi -- d'al mio lan -- \skip4\skip4 gui -- \skip4\skip4\skip4 re __
        Per -- ché vo -- glio __ \skip4\skip4\skip4\skip4\skip4\skip4 fi -- ni -- \skip4 re 
        I gior -- ni miei con le mie tri -- ste __ \skip4 sor -- \skip4 ti
        E_u -- scir con un -- a sol di mil -- le __ \skip4 mor -- \skip4\skip4\skip4 ti,
        E_u -- scir con un -- a sol di mil -- le __ \skip4 mor -- \skip4 ti.
        
}


gero_qual_maggior_segno_incipit_tenor = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenor" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-f3"
	\set Score.timing = ##f
	c,1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

gero_qual_maggior_segno_tenor = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
 c,1 c2 c d d e f4 g a bes  c1 bes2 a4 g c2. bes4 a g f2 g a1 g\breve r2 c c a bes c d1 
 c1. bes2 a1 g r2 g a bes g c2. bes4 a g f2 g c,1 f g2 g a1 f2 bes a g1 f2 g4 f e d e1 d g a2 bes 
 g g c2. bes4 a2 g f4 e d c d1 c f1. e2 d4 e f g a2 a1 g2 \[ f1 e \] d2 d' d c bes g a1 g2 c1 \ficta b2 c1 
r2 c c c d c a4 bes c a bes2 c2. g4 bes2 a1 g2 c c c a bes c g a2. g8[f] e2 g bes2. a4 g2 a2. g4 f e 
f1 g2. f8[e] d2 g f e c g' e f d1 c r2 f f f e4 d e f g2 d4 e f g a f g f e d e1 
d2 d e f g d e f g d e f \[g1 a \] g2 c d bes c a g c bes2. a4 g2 f  e c d1 c2 c' d bes 
c2 a g c2 bes2. a4 g2 f e f d1 \small c\breve \bar"||"
}

gero_qual_maggior_segno_lyrics_tenor = \lyricmode { 
Qual mag -- gior se -- gno del mi -- \skip4\skip4\skip4 o ar -- dor __ \skip4 vo -- \skip4\skip4\skip4\skip4\skip4 le -- te __
        Dol -- ce ne -- mi -- ca mi -- \skip4\skip4\skip4 a 
        s'a po -- c'a po --  \skip4\skip4\skip4\skip4\skip4\skip4 co
        Qual Me -- le -- a -- gro per vir -- tù di fo -- \skip4\skip4\skip4\skip4 co
        Con -- su -- mar d'hor in ho -- ra mi  ve -- dre -- \skip4\skip4\skip4\skip4 te
        Las -- s'in -- gra -- \skip4\skip4\skip4 ta, 
        \markup{\italic"las"} -- \markup{\italic"s'in"} -- \markup{\italic"gra"} -- \skip4 \markup{\italic"ta"}  
ben so che v'ac -- cor -- ge -- \skip4\skip4\skip4 te
        Che per voi mil -- le vol -- \skip4\skip4\skip4\skip4 t'el __ \skip4 dì mo -- ro
        Né per dar -- mi ri -- sto -- \skip4 \skip4 \skip4  ro
        Pie -- to --  \skip4 \skip4 s'un __  \skip4 \skip4 \skip4 \skip4 qua __  \skip4 \skip4 \skip4 vi vi -- d'al mio lan -- gui -- \skip4 re
        Per -- ché vo -- glio __ \skip4\skip4\skip4\skip4 fi -- \skip4 ni -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 re 
        I gior -- ni miei con le mie tri -- ste  sor -- \skip4\skip4\skip4 ti
        E_u -- scir con un -- a sol di mil -- \skip4\skip4 le  mor -- \skip4\skip4 ti,
        E_u -- scir con un -- a sol di mil -- \skip4\skip4 le mor -- \skip4\skip4 ti.
}