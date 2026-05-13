global = {
 \key c\major
 \time 4/2
 \autoBeamOff
  
}

ingegneri_mentre_incipit_canto = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Canto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c1"
	\set Score.timing = ##f
	a'2
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }


ingegneri_mentre_canto = \relative c'{
\key c \major
\clef treble 
\time 4/2
\autoBeamOff
a'2 g4 a f2 e r1 c'2 b4 c a2 g r2 a g4 a b g a2 b r1
d2 c d bes1 a2 g4 f f2. e8[d] e2 f1 r2 e2~e c2 d1 c2
c'1 a2 bes1 a2. g8[f] e4 f e2 d1 r1 e2 f4 e gis2 a r2 d c4 b a c b2 a r 
f2 g4 a bes bes \mens a\breve \endmens fis1 r4 a2 b4 
c2 a4 b c2 b a2 g c b a d4. c8 b4 a2 gis4 a e2 f e4 d
g e2 r r1 e2 f e4 d2 g4 e1 r4 f2 e4 d a'4. g16[\ficta fis] e4 fis!2 r2 r4 c'
\ficta bes4 d c2 r a1 b2 c d1. c2 b a2. \ficta gis8[\ficta fis] \ficta gis2 a4 c2 a4 
d2 c \ficta bes a r1 r4 f d d'2 c \ficta bes4 a2 \grace{f} e c f2 e4 f g2 r4 a2 g4 f2 e2. d4 d2~d4 \ficta cis8[b] \ficta cis2 d1
r2 f1 e2 d2 d2. \ficta cis8[b] \ficta cis2 \mens \stemUp d\longa \endmens \bar"||"

}

ingegneri_mentre_lyrics_canto = \lyricmode {
  Men- tre tu can- ti, men- tre tu can- ti
  io can- --\skip4\skip4\skip4\skip4 to,
  io can- to te- co_e mo- --\skip4\skip4\skip4\skip4 ro,
  di dol- cez- za \markup{\italic"di"} \markup{\italic"dol-"} \markup{\italic"cez-"} --\skip4\skip4 \markup{\italic"za"}
  ri- nas- co, Co- sì del can- to e del mo- rir mi pas- co,
  \markup{\italic"mi"} \markup{\italic"pas-"}--\skip4\skip4\skip4\skip4 \markup{\italic"co,"}
  Can- ta dun- que poi ch'i- o per te Ci- gno di- ven- --\skip4\skip4\skip4\skip4 to,
  E fac- cio nel mo- rir, \markup{\italic"e"} \markup{\italic"fac-"} \markup{\italic"cio"} \markup{\italic"nel"} \markup{\italic"mo-"} \markup{\italic"rir,"}
  dol- ce con- cen- --\skip4\skip4 to,
  Che'l can- tar tuo, ne se m'an- ci de i mo- --\skip4\skip4 ro,
  Ma da for- z'e vir- tù, \markup{\italic"ma"} \markup{\italic"da"} \markup{\italic"for-"} \markup{\italic"z'e"} \markup{\italic"vir-"} \markup{\italic"tù,"}
  \markup{\italic"ma"} \markup{\italic"da"} \markup{\italic"for-"} \markup{\italic"z'e"} \markup{\italic"vir-"} \markup{\italic"tù,"}
al mo- rir mi- --\skip4\skip4\skip4\skip4 o,
\markup{\italic"al"} \markup{\italic"mo-"} \markup{\italic"rir"} 
  \markup{\italic"mi-"} --\skip4\skip4 \markup{\italic"o."}

} 

ingegneri_mentre_incipit_alto = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\global
	\time 4/4
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

ingegneri_mentre_alto = \relative c'{
\key c \major
\clef treble 
\time 4/2
\autoBeamOff
r1 d2 c4 d e c d2 e4 e g2 c, e d4 e c2~c b2 
r4 e d e f d e f g2 a f g e f d1 c c r2 g'
%line2
e2 f1 e4 d f2 e4 g2 e4 f2 d2. e4 f2. e8[d]
\ficta cis4 d2 \ficta cis4 d1 r2 d c4 b a c 
b2 a r1 e'2 f4 e gis2 a4 a, b c d1 d2 \ficta c4 a d2. 
\ficta cis8[b] \ficta cis2 d1 r2 d e f e4 fis
g2 c,1 e e4. f8 g4 a g f e4. d8 e[ d \ficta cis
b ] cis!4 d2 \ficta cis4 d2 r4 \ficta cis2 d \ficta cis4 d e 
cis2 d2 e4 f d2~d cis2 
r4 d2 e4 f d2 \ficta cis4 d2 e4 d f e r d e f g2~g f2
e e r r4 a g a2 g4~g f8[e] f4 e e1 e2 r4
f2 d4 a'2 g f e r4 e
%line 5
c4 d2 g,4 r1 c2. a4 a'1~a2 d,4 e f c2 b4 a2 r r1
g'1 f e2 r d c4 \ficta bes \mens a\breve \stemUp a\longa \endmens \bar"||"



}

ingegneri_mentre_lyrics_alto = \lyricmode {
  Io can- --\skip4\skip4\skip4\skip4 to, io can- to,
  Men- tre tu can- ti io can- --\skip4\skip4\skip4\skip4\skip4\skip4 to,
  io can- to te- co_e mo- ro, 
  di dol- cez- --\skip4\skip4\skip4 za, di dol- cez- za ri- na- --\skip4\skip4\skip4\skip4 sco,
  e del mo- rir mi pas- co, 
  Co- sì del can- to e del mo- rir mi pas- --\skip4\skip4\skip4\skip4 co,
  Can- ta dun- que poi ch'i- o per te \skip4\skip4 Ci- gno di- ven- --\skip4\skip4\skip4\skip4\skip4 to,
  E fac- cio nel mo- rir dol- ce con- cen- to,
  dol- ce con- cen- --\skip4 to,
  Che'l can- tar tuo non mi può dar mar- to- ro,
  ne se m'an- ci- --\skip4\skip4 de_i' mo- ro,
  Ma da for- z'e vir- tù, 
  ma da for- za, ma da for- z'e vir- tù al mo- rir,
  al mo- rir, al mo- rir mi- o.
} 

ingegneri_mentre_incipit_tenore = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c4"
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

ingegneri_mentre_tenore = \relative c'{
\key c \major
\clef "treble_8" 
\time 4/2
\autoBeamOff
r\breve r2 a g4 a b g a b c2 b r2 
e d4 e c2 b a4 b c a d2 e4 f4~ f8 [e8 d c] d2 c1 bes2. a4
g1 a r2 c2~c a2 bes1 a2. \ficta bes4 c2 d g,4 a bes g d' d, f g a1 d,2
r4 f e f g2 a r r d c4 d bes2 a d,4 a' e2 
r g f4 e d1 f e d2 a' d,4 fis2 g4~g a2 d,4 a'2 d,4 e f2 e a g c b4 a d4. c8 b2 a
r4 f g a bes g a2 r4 f g a bes g a2 
a2. a4 bes2 a a r4 a2 a4~a f4 e2 d4 a' g bes a c d \ficta bes a a \ficta bes c 
d1. c2 b2 a4 a b2 c d2. c4 b1 a2 r
r1 r r2 a2~a4 f4 \ficta bes2 a g f 
r4 c'2 a4 d2 c \ficta bes a r4 e'4~e d4 c2 \ficta bes a r1 a2. b4 c2 a1 g2 f1 e \mens \stemUp d\longa \endmens \bar"||" 


}

ingegneri_mentre_lyrics_tenore = \lyricmode {
  Io can- --\skip4\skip4\skip4\skip4\skip4\skip4 to,
  Men- tre tu can- t'io can- --\skip4\skip4\skip4\skip4 to te- --\skip4 co_e
  mo- --\skip4\skip4 ro,
  di dol- cez- --\skip4\skip4 za ri- na- --\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 sco,
  Co- sì del can- to 
  \markup{\italic"Co-"} \markup{\italic"sì"} \markup{\italic"del"} \markup{\italic"can-"} \markup{\italic"to e"}
  del mo- rir, e del mo- rir mi pas- co,
  Can- ta dun- que, can- ta dun- que poi ch'i- o 
  per te Ci- gno di- ven- --\skip4\skip4 to,
  E fac- io nel mo- rir, \markup{\italic"e"} \markup{\italic"fac-"} \markup{\italic"cio"} \markup{\italic"nel"} \markup{\italic"mo-"} \markup{\italic"rir"}
  dol- ce con- cen- to, dol- ce con- cen- to, 
  Che'l can- tar tuo, \markup{\italic"Che'l"} \markup{\italic"can-"} \markup{\italic"tar"} \markup{\italic"tuo"}
  non mi può dar mar- to- ro,
  ne se m'an- ci- de_i' mo- ro, 
  Ma da for- z'e vir- tù, \markup{\italic"ma"} \markup{\italic"da"} \markup{\italic"for-"} \markup{\italic"z'e"}
  \markup{\italic"vir-"} \markup{\italic"tù,"}
  al mo- rir mi- o, al mo- rir, al mo- rir mi- o.

}

ingegneri_mentre_incipit_basso = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
	\relative c'{
	\global
	\time 4/4
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

ingegneri_mentre_basso = \relative c{
\key c \major
\clef bass 
\time 4/2
\autoBeamOff
r1 r2 a' g4 a f2 e1 f2 e4 f g e f2 e 
r2 r1 d2 c4 d bes2 a \ficta bes g a1 bes 
c f, r1 \[ r1 r r r \] r\breve r1 r2 d'2
cis4 d bes2 a r e' f4 g a f g2 a r r f,
g4 a bes1 g2 \mens a\breve \endmens d1 r4
d2 g,4 c2 f,4 g a2 g r c a e' a,4 a' g fis
g d e2 a, r r1 a2. bes2 a4 g c a2 d cis4
d g,2 a1 r4 d2 cis4 d2 a d r4 g f a g2 r1
r1  r2 a g f e1 d e1 a,2 r r1 r1 c2. a4 a'2
g f e r1 f2. d4 a'2 g f e a1 g2 f e1 d a \ficta bes2
c \[ d1 a\] \mens d\longa \endmens \bar"||"


}

ingegneri_mentre_lyrics_basso = \lyricmode {
  Men- tre tu can- ti_io can- --\skip4\skip4\skip4\skip4\skip4 to,
  Men- tre tu can- t'io can- to te- co_e mo- ro,
  Co- sì del can- to e del mo- rir mi pas- co,
  e del mo- rir mi pas- -- co,
  Can- ta dun- que poi ch'i- o per te Ci- gno,
  per te Ci- gno di- ven- to,
  E fac- cio nel mo- rir dol- ce con- cen- -- to,
  dol- ce con- cen- to, 
  Che'l can- tar tuo ne se m'an- ci- de'i mo- ro,
  Ma da for- z'e vir- tù, 
  \markup{\italic"ma"} \markup{\italic"da"} \markup{\italic"for-"} \markup{\italic"z'e"}
  \markup{\italic"vir-"} \markup{\italic"tù,"}
  al mo- rir mi- o, \markup{\italic"al"} \markup{\italic"mo-"} \markup{\italic"rir"} 
  \markup{\italic"mi-"} --\skip4 \markup{\italic"o."}
}