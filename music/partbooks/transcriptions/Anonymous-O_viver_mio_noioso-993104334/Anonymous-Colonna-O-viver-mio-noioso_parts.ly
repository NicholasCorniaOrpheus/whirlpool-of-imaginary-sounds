ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }


global = {
 \key c \major
 \time 2/1
  \autoBeamOff
}

incipitcolonnaoviver_cantus = \markup { \score {
	{
	  \new MensuralVoice<<
	\set Staff.instrumentName = \markup { "Cantus" }
	\key c \major
	%\clef "petrucci-c1"
	\clef "petrucci-c1"
	% \omit Score.BarLine
	 \set Score.timing = ##f
	%\override Staff.NoteHead.style = #'neomensural
	\time 2/2
	g'\breve
	s
	%\revert Staff.NoteHead.style 
	%\bar ""
	  >>
                                               }
\layout{
  %#(layout-set-staff-size 13)
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        %\context { \Staff \override Staff.Clef.Y-extent = #'(0 . 0)}
  }

                                        }  \hspace #1 }
	%\layout  {
	%raggedright = ##t
	%indent = 1.6 \cm
	%line-width = 2.2 \cm
	%\context { \Staff 
	           %\remove Time_signature_engraver }
	%\override Staff.Clef.Y-extent = #'(0 . 0)
	%}} \hspace #1 
%}

colonnaoviver_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
   g'\breve c1. b2 a g \[ a1 b \] g1~g r1 r\breve r1 r2 g g g e1 d r2 d d d g2. f4 e2 g a a a1 g r1 r2 d e g
   f2 e d1 a'2. g4 a b c2 a b2~b4 a4 g1 \ficta fis2 g1 r1 r\breve r1 r2 g g g f f e c4 d e f g2 f e1 d2 e\breve r2 e 
   g a b c b1 g2 a1 g2 f1 e2. f4 g2 a1 \ficta gis2 a\breve r1 r2 f d e f g a2. g4 f2 e2~e d2 e1 r2 g e f g1 r2 c a b 
   c c b2. a4 g2. f4 e2 d r g e f g2. a4 b2 c a b2~b4 a4 g1 \ficta fis2 g\longa*1/2 \bar"||"
}

colonnaoviver_lyrics_cantus = \lyricmode { 
O vi -- ver mio no -- io -- \skip4 so,
O_ad -- ver -- sa sor -- te,
Cer -- co l'o -- scu -- ri -- tà,
Fug -- go la lu -- ce,
O -- dio la vi -- ta_o -- gnor,
Bra -- \skip4\skip4\skip4\skip4 mo la __ \skip4 mor --\skip4 te,
Quel ch'a -- gli_oc -- chi_al -- trui no -- ce,_ 
\skip4 A __ \skip4 me ri -- lu -- \skip4 ce,

Per -- ché chiu -- den -- do lor,
S'a -- pron le por -- \skip4\skip4\skip4\skip4\skip4 te,
Al -- la ca -- gion ch'al mio sol mi con -- du -- ce,  
al -- la ca -- gion, al -- la ca -- gion 
ch'al mio sol mi con -- du -- ce,  
\markup{\italic"al"} -- \markup{\italic"la"} \markup{\italic"ca"} -- \markup{\italic"gion"} 
\markup{\italic"ch'al"} \markup{\italic"mi"} -- \markup{\italic"o"}  \markup{\italic"sol"} \markup{\italic"mi"} \markup{\italic"con"} -- \markup{\italic"du"} -- \skip4 \markup{\italic"ce."}
  
}

incipitcolonnaoviver_altus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Altus" }
	\relative c'{
	\key c \major
	\clef "petrucci-c3"
	%\clef alto
	 %\omit Score.BarLine
	\set Score.timing = ##f
	%\override Staff.NoteHead.style = #'petrucci
	%\override Rest.style = #'mensural
	%\override TimeSignature.style = #'neomensural
	\time 2/2
	r1 
	c1
	}
	%\revert Staff.NoteHead.style
	%\bar ""
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        %\context { \Staff \override Staff.Clef.Y-extent = #'(0 . 0)}
  }

} \hspace #1 }

colonnaoviver_altus = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
  r1 c1~c f1~f2 e2 d c d1 e1~e a,1 c d2 e d2. c4 b1 c2 c c c \[ b1 a\] b1 e, r2 c' c c f2. e4 d2 e d c 
  c b c g a c b b a f' f e f d e1 d2 d d d c c b2. g4 b2 b a1 g r r2 f g e 
  a2 g r1 a1 c2. c4 c2 c b1 r2 a g g g'2. f4 e2 c f2 e d2. c4 b2. c4 d2 \small a \normalsize r e' c d e e c d a1 r2 c 
  a2 b c d a1~a2 f2 g2. a4 \[b1 c \] d2 d e e d d c2. d4 e2 d b c2~c a2 b c2~c d2 e2. f4 g2 e f d  \[e1 d \] b\longa*1/2
  
}

colonnaoviver_lyrics_altus = \lyricmode { 
O vi -- ver mio no -- io -- so,
\markup{\italic"o"} \markup{\italic"vi"} -- \markup{\italic"ver"} \markup{\italic"mi"} -- \markup{\italic"o"} \markup{\italic"no"} -- \markup{\italic"io"} -- \markup{\italic"so,"}
O_ad -- ver -- sa sor -- \skip4\skip4 te,
Cer -- co l'o -- scu -- ri -- tà,
Fug -- go la lu -- \skip4 ce,
O -- dio la vi -- ta_o -- gnor,
Bra -- mo la mor -- \skip4\skip4 te,
Quel ch'a -- gli_oc -- chi_al -- trui no -- ce,_A me ri -- lu -- ce,
a me ri -- lu -- ce,

Per -- ché chiu -- den -- do lor,
\markup{\italic"per"} -- \markup{\italic"ché"} \markup{\italic"chiu"} -- \markup{\italic"den"} -- \markup{\italic"do"} \markup{\italic"lor,"}
S'a -- pron le por -- \skip4\skip4\skip4\skip4 te,
Al -- la ca -- gion,
al -- la ca -- gion,
al -- la ca -- gion
ch'al mio sol mi con -- du -- \skip4 ce,    
ch'al mi -- o sol mi con -- \skip4 du -- \skip4 ce,
al -- la ca -- gion ch'al mio sol mi con -- du -- \skip4\skip4\skip4 ce.
  
}

incipitcolonnaoviver_tenor = \markup { 
  \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenor" }
	\key c \major
	\set Score.timing = ##f
	\clef "petrucci-c4"
	\time 2/2
	r\longa
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

colonnaoviver_tenor = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
  r\breve r r g c1. b2 a g \[ a1 b \] g e2. f4 g2 a2~a g1 \ficta fis2 g g g g c2. b4 a1 d2. c4 b a b2 a g1 f2 g e 
  d c g' g f4 d d'2 d c d2. c4 b2 c a d,2~d g1 \ficta fis2 g1 r2 d' d d c c b g a b c g c b 
  a2. g4 f1 e r2 e g2. a4 b2 c b e,2. f4 g a b2 a c c a1 g2. a4 b2 c b1 a c a2 b c d a2. a4 a2 d, 
  e2 f r c'2~c a2 b c d e2. d4 c2~c b2 g a2~a g1 f2 g2 g1 e2~e f2 g1~g2 a2 b c d c d2. c4 b2 c a1 g\longa*1/2
  
 
}

colonnaoviver_lyrics_tenor = \lyricmode { 
O vi -- ver mio no -- io -- \skip4 so,
O ad -- ver -- sa sor -- \skip4 te,
Cer -- co l'o -- scu -- ri -- tà,
Fug -- \skip4\skip4\skip4\skip4 go la lu -- ce,
O -- dio la vi -- ta_o -- gnor, __ \skip4
\markup{\italic"o"} -- \markup{\italic"dio"} \markup{\italic"la"} \markup{\italic"vi"} -- \markup{\italic"ta o"} -- \markup{\italic"gnor,"}

Bra -- mo la mor -- \skip4 te,
Quel ch'a -- gli_oc -- chi_al -- trui no -- ce,_A me ri -- lu -- ce,_a me ri -- lu -- \skip4\skip4 ce,
Per -- ché  chiu -- den -- do lor, __ \skip4\skip4\skip4\skip4\skip4
S'a -- pron le por -- \skip4\skip4\skip4\skip4\skip4 te,
Al -- la ca -- gion ch'al mio sol mi con -- du -- ce,    
al -- la ca -- gion ch'al mio __ \skip4\skip4  sol mi con -- du -- \skip4 ce,
al -- la ca -- gion ch'al mio sol mi con -- du -- \skip4\skip4\skip4\skip4 ce.




}

incipitcolonnaoviver_bassus = \markup { 
  \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Bassus" }
	\key c \major
	\set Score.timing = ##f
	\clef "petrucci-f4"
	\time 2/2
	r\longa
	
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }


colonnaoviver_bassus = \relative c{
  \global
  \clef bass
  r\breve r r r1 c~c f1~f2 e2 d c \[ d1 e \] c1 c2 c d\breve g,1 r2 c c c f2. e4 d1 g f2 e d1 c \[ r1 r\] d2. e4 f g a2 
  f2 g2~g c,2 d2. c4 b2 a4 g a1 g2 g' g g f f e c e e d1 c r1 r\breve a1 c2. d4 e1. a,2 e'1 r2 e2~e f1 c2 d1 
  e r2 f d e f d a'1~a2 g2 f d2~d c2 d b2 a d1 c2 f1 e2 c g'1 a g2. f4 e2 c d b a1 g r2 c2~c d2 g, c2~c f2 
  e c g' a f g2~g c,2 d1 g,\longa*1/2
  
  
  
  
}

colonnaoviver_lyrics_bassus = \lyricmode { 
O vi -- ver mio no -- io -- \skip4 so,_ad -- ver -- sa sor -- te,
Cer -- co l'o -- scu -- ri -- tà,
Fug -- go la lu -- ce,
Bra -- \skip4\skip4\skip4\skip4\skip4 mo la mor -- \skip4\skip4\skip4\skip4\skip4 te,
Quel ch'a -- gli_oc -- chi_al -- trui no -- ce,_A me ri -- lu -- ce,

Per -- ché chiu -- den -- do lor,
S'a -- pron le por -- te,
Al -- la ca -- gion ch'al mio sol mi con -- du -- ce,
mi con -- du -- \skip4\skip4 ce,
al -- la ca -- gion ch'al mio sol mi con -- du -- ce,
ch'al mio sol mi con -- du -- ce,
ch'al mio sol mi con -- du -- ce.

  
}