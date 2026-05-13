ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }

global = {
 \key f \major
 \time 2/1
  \autoBeamOff
}

columbam_incipit_cantus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Cantus" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-c4"
	\set Score.timing = ##f
	f,1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

columbam_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
 f,1 a c1. c2 bes1 a r2 f g a g1 r2 g c2. bes4 a2 g4 f g1 a g e f2 e a g2~g f2 g2. f4 g2 a g a2~a4 g4 f1 e2 f1. e2 d1 c 
 r1 r2 g'2~g a2 f1 g\breve bes1. bes2 a1 a f\breve f e r r1 c f2 f g c c \ficta b c1 r2 c1 bes2 a1 g f2. g4 a bes c2~c2 bes2 c d d d d1 f\breve~f c1. bes2 a g f c'2~c4 a4 bes2 c c a 
 bes2 c g2~g4 f8[e] f2. d4 e2 f2. g4 a bes c2~c2 \ficta b2 c1 
 %3
 \time 3/1
 %\tempo 1=180
 c1 c c d c\breve  a r1 e'\breve d1 d f\breve 
 \break
 \time 2/1
 e\breve r r2 c c bes c2. bes4 a2. g4 f g a f g1 f r2 c'2~c4 bes4 a2. g4 f2~f e2 
 f1 d c2 c' c c c1 r2 c c bes c2. bes4 a2 a g1 r2 f g g a f g f2. e8[d] e2 f g1 f2 \[ g\breve c~c \] r2 f f f f\breve e1 d~d d c\longa \bar"||"
  
}

columbam_lyrics_cantus = \lyricmode { 
Vi -- di spe -- ci -- o -- sam,
spe -- ci -- o -- sam,
Si -- cut co -- lum -- \skip4 \skip4 \skip4 bam,
\markup{\italic"si"} -- \markup{\italic"cut"} \markup{\italic"co"} -- \skip4 \markup{\italic"lum"} -- \skip4\skip4 \markup{\italic"bam,"} __ \skip4\skip4\skip4\skip4\skip4\skip4
A -- scen -- den -- \skip4\skip4 tem, 
a -- scen -- den --  tem, 
Su -- per ri -- vos a -- qua -- rum,
Cu -- ius i -- ne -- sti -- ma -- bi -- lis 
o -- dor e -- rat ni -- \skip4\skip4\skip4\skip4\skip4 mis in ve -- sti -- men -- tis,
\markup{\italic"in"} -- \skip4 \markup{\italic"ve"} --  \markup{\italic"sti"} -- \markup{\italic"men"} -- \skip4 \markup{\italic"tis"} e -- ius,
in -- ve -- sti -- men -- \skip4\skip4\skip4\skip4 ti e -- \skip4\skip4\skip4\skip4\skip4 ius,
Cir -- cun -- da -- bant e -- am, 
flo -- res ro -- sa -- rum, 
et li -- li -- a con -- val -- \skip4\skip4\skip4\skip4\skip4 li -- um,
et __ \skip4 li -- \skip4\skip4\skip4\skip4 li -- a con -- val -- li -- um,
\markup{\italic"et"} \markup{\italic"li"} -- \markup{\italic"li"} -- \markup{\italic"a"} \markup{\italic"con"} --  \markup{\italic"val"} -- \markup{\italic"li"} -- \markup{\italic"um,"}
et li -- li -- a con -- val -- \skip4\skip4\skip4\skip4\skip4 li -- um, __ \skip4  
\markup{\italic"et"} \markup{\italic"li"} -- \markup{\italic"li"} -- \markup{\italic"a"} \markup{\italic"con"} --  \markup{\italic"val"} -- \markup{\italic"li"} -- \markup{\italic"um."}


}

columbam_incipit_altus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Altus" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-c4"
	\set Score.timing = ##f
	r\longa
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

columbam_altus = \relative c'{
  \global
  %\clef "treble_8"
  \clef treble
  r\breve r r r r f,1 a c1. c2 bes1 a1~a2 g4 f e2 d e c d1 e\breve r1 c f4 g a bes c2 g2~g4 f4 f2. e8[d] e2 f a f g c, c'2. a4 \ficta b2 c\breve d1. d2 c1 c 
  bes\breve a g f1 g f2. g4 a2 g2~g4 f4 f1 e2 f1 e2. f4 g2 a2. g4 e2 f c'1 c2 a1 r2 g a f g bes bes bes bes bes d\breve c r r r2 f,1 e2 f1 g a2 f g1 r2 f2. g4 
  a2~a2 g4 f g1 
  \time 3/1
  f1 f f d1 e\breve c r1 c'\breve a1 bes d\breve 
  \time 2/1
  c\breve c2. bes4 a2 g a f2. g4 a f g2 c2. bes4 a2~a4 g4 f2. e8[d] e2 f f c1 r2 c' c bes c2. bes4 a2 a 
  g1 e2 f2~f e4 d e f g2~g f2 g1 r\breve c,1 d2 f f e f f c f1 g2 a bes g c2~c bes2 c2. bes4 a2 g f1 e\breve r2 bes' bes bes a\breve g1 f f\breve f\longa
  
  
}

columbam_lyrics_altus = \lyricmode { 
Vi -- di spe -- ci -- o -- \skip4\skip4\skip4 sam  
si -- cut co -- lum -- bam,
A -- scen -- \skip4\skip4\skip4\skip4 den -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 tem,

Su -- per ri -- vos a -- qua -- rum,
Cu -- ius i -- \skip4 ne -- sti -- \skip4 ma -- bi -- lis 
o -- \skip4 dor e -- \skip4\skip4\skip4 rat ni -- mis,
e -- rat ni -- mis in ve -- sti -- men -- tis e -- ius,
\markup{\italic"in"} -- \skip4 \markup{\italic"ve"} --  \markup{\italic"sti"} -- \markup{\italic"men"} -- \skip4 \markup{\italic"tis"} 
e -- \skip4\skip4\skip4\skip4 ius,
Cir -- cun -- da -- bant e -- am, 
flo -- res ro -- sa -- rum,
et __ \skip4 li -- li -- a con -- \skip4\skip4\skip4\skip4 val -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4 li -- um,
\markup{\italic"et"} \markup{\italic"li"} -- \markup{\italic"li"} -- \markup{\italic"a"} \markup{\italic"con"} --  \markup{\italic"val"} -- \markup{\italic"li"} -- \markup{\italic"um,"}
con -- val -- \skip4\skip4\skip4\skip4\skip4 li -- um,
et  li -- li -- a con -- val -- li -- um,
\markup{\italic"et"} \markup{\italic"li"} -- \markup{\italic"li"} -- \markup{\italic"a"} \markup{\italic"con"} --  \markup{\italic"val"} -- \skip4\skip4\skip4\skip4\skip4 \markup{\italic"li"} -- \markup{\italic"um,"}
et  li -- li -- a con -- val -- li -- um.
  
}

columbam_incipit_tenor = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenor" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-c4"
	\set Score.timing = ##f
	r\longa
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

columbam_tenor = \relative c'{
  \global
  %\clef "treble_8"
  \clef treble
  r\breve r r1 f, a c1~c2 c2 bes1 a r2 f2~f e2 f2. e4 d1 c c'2. bes4 c2 d2~d4 c4 c1 \ficta b2 c\breve r r f,1 g a2 c1 bes2 c1 d e\breve f1. f2 f1 f d\breve c\breve~c r2 c1 bes2 
  a2 d2. c4 c2~c2 bes2 a g2~g4 f4 f2 g1 e2 c4 d e f g2~g4 f4 f1 e2 f1 r2 c f2. d4 e2 f f1 f bes\breve a r1 c1~c2 bes2 a g f2. g4 a2 g2~g4 f4 f1 e2 f d c c' bes a2. g4 e2 
  f e4 d e1 
  \time 3/1 a1 a a bes g\breve f r1 g\breve f1 f bes\breve 
  \time 2/1 g\breve f1 f2 e f2. e4 d2 d c1 r2 c' c bes c2. bes4 a2 a g1 r r2 f g a2. bes4 c2~c4 \ficta b8[a] \ficta b2 c2. \ficta bes!4 
  a2 a g1 c, d2 d f e f f g c c bes c2. bes4 a2 a g bes c1 c,2 d e c d1 e4 c c'2~c bes2 a1 g\breve r2 d' d d c\breve~c1 a bes bes a\longa
}

columbam_lyrics_tenor = \lyricmode { 
Vi -- di spe -- ci -- o -- sam,
\markup{\italic"vi"} -- \markup{\italic"di"} \markup{\italic"spe"} -- \markup{\italic"ci"} -- \markup{\italic"o"} -- \markup{\italic"sam,"}
si -- \skip4 cut co -- \skip4 lum -- \skip4 bam,
A -- scen -- den -- \skip4\skip4\skip4\skip4 tem 
su -- per ri -- vos a -- qua-_rum,
Cu -- ius i -- ne -- sti -- ma -- bi -- lis 
o -- \skip4 dor e -- rat ni -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4 mis,
in ve -- \skip4\skip4 sti -- men -- tis e -- ius,
in ve -- \skip4 sti -- men -- \skip4 tis e -- \skip4\skip4\skip4\skip4\skip4 ius,
\markup{\italic"in"} -- \markup{\italic"ve"} --  \markup{\italic"sti"} -- \markup{\italic"men"} -- \markup{\italic"tis"} e -- \skip4\skip4 ius,
Cir -- cum -- da -- bant e -- am,
flo -- res ro -- sa -- rum,

et li -- li -- a con -- val -- li -- um,
et li -- li -- a con -- val -- li -- um,

\markup{\italic"et"} \markup{\italic"li"} -- \markup{\italic"li"} -- \skip4 \markup{\italic"a"} __ \skip4\skip4\skip4 \markup{\italic"con"} --  \markup{\italic"val"} -- \markup{\italic"li"} -- \markup{\italic"um,"}
et li -- li -- a con -- val -- li -- um,
\markup{\italic"et"} \markup{\italic"li"} -- \markup{\italic"li"} -- \markup{\italic"a"} __ \skip4\skip4 \markup{\italic"con"} --  \markup{\italic"val"} -- \markup{\italic"li"} -- \markup{\italic"um,"}
et li -- li -- a con -- val -- \skip4\skip4\skip4 li -- um,
\markup{\italic"et"} \markup{\italic"li"} -- \markup{\italic"li"} -- \markup{\italic"a"} \markup{\italic"con"} --  \markup{\italic"val"} -- \markup{\italic"li"} -- \markup{\italic"um."}


  
}

columbam_incipit_bassus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Bassus" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-f4"
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

columbam_bassus = \relative c{
  \global
  %\clef bass
  \clef "treble_8"
  r1 f, a c d f2. e4 d c d2 c1 r2 f g e f1. e4 d c1 r2 f, g g a1 f2 c'1 \ficta b2 c a g1 c\breve f1 g a2 f4 g a bes c2~c bes2 c1 r2 c, 
  d e2~e f2 d1 c\breve bes1. bes2 f'1 f bes,\breve f c' r f1. e2 d1 c2 c d d c1~c \[ r r \] c1 d2 f1 e2 d1 c2 bes bes bes bes1 bes\breve f' r f1 f2 e d1 c d c r1 c d2 f
  f c d1 c 
  \time 3/1 f, f f bes c\breve f, r1 c'\breve d1 bes bes\breve 
  \time 2/1 c\breve r r1 r2 f f e f2. e4 d2 d c1 r2 f f e f2. e4 d2 d c1 f, g2 g 
  a2 f2~f4 g4 a bes c1 a g r2 c d f f e f d c1 r2 f e d1 c2~c bes2 c a g1 c f,\breve c' r2 bes bes bes f'\breve c1 d bes\breve f\longa
  
  
  
  
}

columbam_lyrics_bassus = \lyricmode { 
Vi -- di spe -- ci -- o -- \skip4\skip4\skip4\skip4 sam, 
a -- scen -- den -- \skip4\skip4\skip4 tem
si -- cut co -- lum -- \skip4\skip4\skip4\skip4\skip4\skip4 bam,
A -- scen -- den -- \skip4\skip4\skip4\skip4\skip4\skip4 tem, 
a -- scen -- den -- \skip4\skip4 tem,
su -- per ri -- vos a -- qua -- rum,
Cu -- ius i -- ne -- sti -- ma -- bi -- lis __ 
cu -- ius i -- ne -- sti -- ma -- bi -- lis

o -- dor e -- rat in ve -- sti -- men -- tis e -- ius,
in ve -- sti -- men -- tis e -- ius,
Cir -- cum -- da -- bant e -- am,
flo -- res ro -- sa -- rum,
et li -- li -- a con -- val -- li -- um,
\markup{\italic"et"} \markup{\italic"li"} -- \markup{\italic"li"} -- \markup{\italic"a"} \markup{\italic"con"} --  \markup{\italic"val"} -- \markup{\italic"li"} -- \markup{\italic"um,"}
et li -- li -- a con -- \skip4\skip4\skip4 val -- li -- um,
\markup{\italic"et"} \markup{\italic"li"} -- \markup{\italic"li"} -- \markup{\italic"a"} \markup{\italic"con"} --  \markup{\italic"val"} -- \markup{\italic"li"} -- \markup{\italic"um,"}
et li -- \skip4 li -- a con -- val -- \skip4\skip4 li -- um,
\markup{\italic"et"} \markup{\italic"li"} -- \markup{\italic"li"} -- \markup{\italic"a"} \markup{\italic"con"} --  \markup{\italic"val"} -- \markup{\italic"li"} -- \markup{\italic"um."}

  
}