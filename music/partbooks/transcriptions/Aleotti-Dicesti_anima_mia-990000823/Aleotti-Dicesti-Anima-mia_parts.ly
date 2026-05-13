global = {
 \key f\major
 \time 4/2
 \autoBeamOff
  
}

aleotti_dicesti_incipit_soprano = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Canto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c1"
	\set Score.timing = ##f
	d'1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

aleotti_dicesti_soprano = \relative c''{
 \global
 \clef treble
 \time 4/2
 \key f\major
 d1 d2 b c bes? a1 g2 bes a g e g a1 g2 bes 
 c d es d c1 \ficta b \[ r1 r\] r4 a f4. g8 a2 f e f e4 d d1 cis2 \mens d\breve \endmens r2 bes'1
 c2~c4 g2 a8 [bes] c2. bes4 a2 g a1 \small g \normalsize r2 d4 d8 d g4 g f bes a g 
 g fis g2 bes4 bes8 bes bes4 bes a2 a2. bes4 a4. a8 a4 g f2 f f f f1 f 
 d'2 d4 c bes a g a bes2 bes a1 g \[ r1 r\] a2 a4 g f e d e f g 
 a2~a4 g2 fis4 \small g1~ \normalsize \mens g\longa \endmens \bar"||"
 
  
}

aleotti_dicesti_lyrics_soprano = \lyricmode {
 Di -- ce -- sti_A -- ni -- ma mi -- a,
 \markup{\italic"Di"} -- \markup{\italic"ce"} -- \markup{\italic"sti A"} -- \markup{\italic"ni"} -- \markup{\italic"ma"}
 \markup{\italic"mi"}  -- \markup{\italic"a,"}
 Ch'ar -- di per me d'A -- mo -- re,
 Sol con le lab -- bra_O
 col pro -- fon -- do co -- \skip4 re
 Ah, ah __ non __ \skip4\skip4 fia mai ch'io_il cre -- da
Fin -- ché del -- l'A -- mor tuo se -- gno non ve -- \skip4 da,
 Vuoi che si -- cu -- ro_io si -- a,
Che sia -- no_i det -- ti tuoi fi -- di_e ve -- ra -- ci,
Sian te -- sti -- mo -- ni_e giu -- ra -- men -- ti_i ba -- ci,
Sian te -- sti -- mo -- ni_e giu -- ra -- men -- ti_i ba -- \skip4\skip4 ci. __

}

aleotti_dicesti_incipit_alto = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c3"
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

aleotti_dicesti_alto = \relative c'{
 \clef "treble_8"
 \time 4/2
 \key f\major
 g'1 fis2 g a g g fis g g a d, c d2 d1 d2 
 g g fis g g g1 g r4 a f g a2. g8 f e2 d e d e d bes1
 \[ a1~a \] r2 d bes g g'2. f4 es2. d4 c1~c2 bes2 a1 b2 d4 d8 d e4 e f2 bes, d4 d 
 d1 d2 d4 d8 d d4 e f2 f2. f4 f4. f8 f4 d d2 c d d c1 d2 d 
 d4 c bes a g a bes2. g4 g'1 fis2 g g g4 f es d c d es2 d1 \mens d\longa d\longa \endmens
}

aleotti_dicesti_incipit_tenore = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
	\relative c'{
	\global
	\time 4/4
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

aleotti_dicesti_tenore = \relative c'{
 \clef "treble_8"
 \time 4/2
 \key f\major 
 r\breve r d1 d2 b c bes? a1 g2 d' g, a c d es1 d4 d 
 bes4 c d2. c8 bes c4. bes8 a4 d2 cis4 d a c4. bes8 a4 a a2 a g2. f4 e1 d2 
 f1 g2~g4 a4 bes1 g2 c2. bes4 a2 g fis g1 fis2 g1 r2 bes4 bes8 a g4 g a g 
 f bes a2 g bes4 bes8 bes bes4 bes c2 c2. d4 c4. c8 c4 bes a2 a a bes bes 
 a \[ bes1~bes \] \[r1 r\] r2 d d4 c bes a g a c2 g g f a a4 g f e d e 
 f g a bes a2 \small g1~ \mens \normalsize g\longa \endmens
  
}

aleotti_dicesti_incipit_basso = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-f4"
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

aleotti_dicesti_basso = \relative c'{
 \clef bass
 \time 4/2
 \key f\major
 r\breve r g1 fis2 g a g g fis g g es d c b c1 
 g' r r4 a f g a2 d, a d cis d g,1 a r2 d bes g g'2. f4 es2. d4 
 \mens c\breve d \endmens r2 g,4 g8 g c4 c bes2 es d4 g, d'1 g,2 g'4 g8 g g4 g f2 f2. bes,4 
 f'4. f8 f4 g4 d2 f d bes f'1 bes, r\breve r g'2 g4 f es d c d es2 c \small d1~ \mens  d\longa g,\longa \endmens
  
}