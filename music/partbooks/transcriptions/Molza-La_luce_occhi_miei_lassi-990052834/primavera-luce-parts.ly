global = {
  \key f \major
  \time 2/2
  \autoBeamOff
  \set Score.tempoHideNote = ##t
  
}

primavera_luce_incipit_canto_primo = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Canto" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-g"
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


primavera_luce_canto_primo = \relative c'{
\global
\key f \major
\clef treble 
\time 2/1
\tempo 1 =60
\autoBeamOff

g'1 bes~bes2 c d es d c1 b!2 c c d1 es 
d2 g, g1 g r2 d' e g~g d1 d2 d1 d2 d d4 e 
f1 d2 a2 a4 bes c1 
%note nere
c\breve r1 f~f d c e!~e d~d \ficta cis
d a r a2 d~d cis d4 e f2~f4 e[ d c bes a] bes2 a d 
bes2. d4~d f2 es4 d1
%\tempo \breve.=60
\time 3/1
\tempo 1 = 180
d1 g, a bes 
bes c d bes a d\breve r1
\tempo 1 = 60
d1. es2 d1 r2 d~d g, d' es d2. c4 bes2 
es d1 d1~d r1 a2 d1 cis2 d4 e f2. e4 [d c] \stemDown bes [a] \stemNeutral bes2 a
d bes2. d2 f es4 \small d\breve \normalsize 
%\tempo \breve.=60
\time 3/1
\tempo 1 =180
d1 g, a bes 
bes c d bes a d\breve r1
\tempo 1=60
d1. es2 d1 r2 d~d g, d' es d2. c4 bes2 
es \small d\breve \normalsize d\breve~d\breve \bar"||"



}

primavera_luce_lyrics_canto_primo =\lyricmode {
 La lu- ce_oc- chi miei las- -- \skip4\skip4 si, 
 \markup{\italic"oc-"} -- \skip4 \markup{\italic"chi"} \markup{\italic"mie-"} \markup{\italic"i"} \markup{\italic"las-"} \markup{\italic"si,"}
\markup{\italic"da-"} \markup{\italic"va"} lu -- \skip4 ce_a vo- i fa gior- no_ad al- tri, \markup{\italic"fa"} \markup{\italic"gior-"} \markup{\italic"no ad"} \markup{\italic"al-"} \markup{\italic"tri,"}
Os- cu- ra not- te_a no- --\skip4 i,
On- d'io so- ven- te can- --\skip4\skip4 to,
On- d'io so- ven- te can- to, 
Co- sì va, co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"}
Ch'in al- trui, \markup{\italic"ch'in"} \markup{\italic"al-"} \markup{\italic"trui"} pon fe- --\skip4\skip4 de tan- to,
On- d'io so- ven- te can- --\skip4\skip4\skip4 to,
On- d'io so- ven- te can- to,
Co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} co- sì va, 
Ch'in al- trui, \markup{\italic"ch'in"} \markup{\italic"al-"} \markup{\italic"trui"} pon fe- --\skip4\skip4 de tan- to.
}

primavera_luce_incipit_canto_secondo = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Quinto" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-c1"
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


primavera_luce_canto_secondo = \relative c'{
\key f \major
\clef treble 
\time 2/1
\autoBeamOff
r\breve r g'\breve~g1 bes~bes2 c d \ficta es
d c b c~c4 b8 [a] b2 c1 r2 g fis2. g4 a g2 fis4 g1 r2 f2 f4 g a2~a f4 d c f2 e4 
%note nere
f1 g a\breve a1 a a c~c2 bes a g a\breve 
a1 r2 a bes1 r4 a f g a1 a2 a f r4 e g a g2 fis fis g r4 bes~bes d2 c4 bes a8 [g] a2 
\time 3/1
bes1 bes a g d' c bes g a bes g a 
\time 2/1 
bes1 g2 c b r4 d bes c a2 bes1 g2 c bes 
a g c bes4 a8 [g] a2 bes1 a bes r4 a f g a1 a2 a f r4 e g a g2
fis fis g r4 bes2 d c4 bes a8 [g] \small a1. \normalsize 
\time 3/1
bes1 bes a g d' c bes g a bes g a
\time 2/1 
bes1 g2 c b r4 d bes c a2 bes1 g2 c bes 
a g c bes4 [a8 g] a4 [d] \small d1 \normalsize b\breve~b \bar"||"
}

primavera_luce_lyrics_canto_secondo = \lyricmode {
  La lu- ce_oc- chi miei las- --\skip4\skip4\skip4\skip4\skip4 si,
  Che da- va lu- c'a vo- i fa gior- no_ad al- tri
  \markup{\italic"fa"} \markup{\italic"gior-"} \markup{\italic"no ad"} \markup{\italic"al-"} \markup{\italic"tri,"}
  Os- -- cu- -- ra not- -- te_a no- --\skip4\skip4\skip4\skip4 i,
  On- d'io so- ven- te can- to, on- d'io so- ven- te can- to,
  on- d'io so- ven- te can- --\skip4\skip4 to,
  Co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"}
  ch'in al- trui pon fe- de tan- to, ch'in al- trui pon fe- de tan- --\skip4\skip4 to,
  On- d'io so- ven- te can- to, on- d'io so- ven- te can- to,
  on- d'io so- ven- te can- --\skip4\skip4 to,
   Co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"}
  ch'in al- trui pon fe- de tan- to, ch'in al- trui pon fe- de tan- --\skip4\skip4 to.
}

primavera_luce_incipit_alto = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-c2"
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


primavera_luce_alto = \relative c'{
\key f \major
\clef "treble_8" 
\time 2/1
\autoBeamOff
r\breve r r r g1 bes~bes2 c d es d1 c2 g b d d2. bes?4 
a d d2 d4 d d e f2 d r f f4 g a1 g2 
%note nere
a1 e f c d a~a a' g d e a 
f2 d fis2. fis4 g g g2 c, r r a d1~d2 r4 a bes d d2 d4 a2 d2 d4 g2 f2
g2. f8 [e] fis2 
\time 3/1
g1 g fis g g \ficta fis g d f f d f 
\time 1/1
f2 g1 g2 g r4 g g g2 fis4 g2 g1 g2 g fis g
g2~g4 f8 [e] fis2 g d fis2. fis4 g g g2 c, r r a 
d1. r4 a bes d d2 d4 a2 d4~d d4 g2 f g2~g4 f8 [e] \small fis1.  
\normalsize
\time 3/1
g1 g fis g g \ficta fis g d f f d f 
\time 1/1
f2 g1 g2 g r4 g g g2 fis4 g2 g1 g2 g fis g
g2~g4 f8 [e] fis2 \small fis1 \normalsize g\breve~g \bar"||"


}

primavera_luce_lyrics_alto = \lyricmode {
  La lu- ce_oc- chi miei las- si, 
  Che da- va lu- ce, lu- c'a vo- i fa gior- no_ad
  al- tri, \markup{\italic"fa"} \markup{\italic"gior-"} \markup{\italic"no ad"} \markup{\italic"al-"} \markup{\italic"tri,"}
  Os- cu- ra not- te_a no- --\skip4 i, a no- --\skip4 i, 
  On- d'io so- ven- te can- to,
  on- d'io so- ven- te can- to, 
  \markup{\italic"on-"} \markup{\italic"d'io"} \markup{\italic"so-"} \markup{\italic"ven-"} \markup{\italic"te"} \markup{\italic"ca-"} --\skip4\skip4 \markup{\italic"to,"}
Co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"}  
ch'in al- trui pon fe- de tan- to, ch'in al- trui pon fe- --\skip4 de tan- to,
On- d'io so- ven- te can- to,
on- d'io so- ven- te can- to, 
\markup{\italic"on-"} \markup{\italic"d'io"} \markup{\italic"so-"} \markup{\italic"ven-"} \markup{\italic"te"} \markup{\italic"ca-"} --\skip4\skip4 \markup{\italic"to,"}
Co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"}  
ch'in al- trui pon fe- de tan- to, ch'in al- trui pon fe- --\skip4 de tan- --\skip4 to,

}

primavera_luce_incipit_tenore = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-c3"
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


primavera_luce_tenore = \relative c'{
\key f \major
\clef "treble_8" 

\autoBeamOff

  \time 2/1
r1 g bes1. c2 d es d1 c r4 f,2 bes4~bes g r2 d'1~
d d2 g g1 g2 e d g, a d d4 bes a2 g1 
r2 d'2 d4 e f2 d a a4 bes c2 
%note nere 
f,1 c'~c a~a a c1. d2 e1 f e\breve
d2 a d1~d2 e f4 c d2 e e f f, a2. c4 d4. c8 bes4 g a d2 bes g4 g g 
bes4. a8 bes4 c d1
\time 3/1
g,1 d' d d bes a g g f bes bes c
\time 2/1
d b2 c d r4 d es c d2 g,1 b2 c 
d d g, g d'1 d2 g, d'1. e2 f4 c d2 e e f f, 
a2. c4 d4. c8 bes4 g a d2 bes4~bes g4 g g bes4. a8 bes4 c \small d\breve \normalsize
\time 3/1
g,1 d' d d bes a g g f bes bes c
\time 2/1 
d b2 c d r4 d es c d2 g,1 b2 c 
d d g, g d'1 \small d \normalsize d\breve~d \bar"||"
}


primavera_luce_lyrics_tenore = \lyricmode {
 La lu- ce_oc- chi miei las- si, 
 La lu- ce oc- -- chi miei las- si,
 Che da- va lu- ce lu- c'a vo- i
 fa gior- no_ad al- tri, \markup{\italic"fa"} \markup{\italic"gior-"} \markup{\italic"no ad"} \markup{\italic"al-"} \markup{\italic"tri,"}
 Os- cu- ra not- --\skip4\skip4 te_a no- i,
 On- d'io so- ven- te can- to,
 \markup{\italic"on-"} \markup{\italic"d'io"} \markup{\italic"so-"} \markup{\italic"ven-"} \markup{\italic"te"} \markup{\italic"ca-"} -- \markup{\italic"to,"}
On- d'io so- ven- te can- --\skip4 to,
Co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} 
Ch'in al- trui pon fe- de tan- to, ch'in al- trui pon fe- de tan- to,
On- d'io so- ven- te can- to, \markup{\italic"on-"} \markup{\italic"d'io"} \markup{\italic"so-"} \markup{\italic"ven-"} \markup{\italic"te"} \markup{\italic"ca-"} -- \markup{\italic"to,"}
On- d'io so- ven- te can- --\skip4 to,
Co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} 
Ch'in al- trui pon fe- de tan- to, ch'in al- trui pon fe- de tan- -- \skip4 to.


}

primavera_luce_incipit_basso = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-f3"
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


primavera_luce_basso = \relative c'{
\key f \major
\clef bass 
\time 2/1
\autoBeamOff
r\breve g~g c,1 bes es2 c g'1~g\breve~g1 c,1 g' d2. g4
fis4 g d2 g bes bes4 c d2 d,2 d d4 e f1 c2 
%note nere
c'\breve f, d a'1. bes2 c1 d a\breve 
d,1 r2 d g2. g4 f a bes2 a1 r2 d, d2. a'4 g fis g2 d1 \[ r1r1\] r1
%proportio tripla
\time 3/1 
r1 g d g g a bes bes c d g, f
\time 2/1
bes2 g1 c,2 g'1 r r2 g1 c,2 g' d es c d1 g r2 d g2. g4
f4 a bes2 a1 r2 d, d2. a'4 g fis g2 d1 r1 r r1 \small r \normalsize
\time 3/1
r1 g d g g a bes bes c d g, f
\time 2/1
bes2 g1 c,2 g'1 r r2 g1 c,2 g' d es c d1 \small d \normalsize g\breve~g \bar"||"


}

primavera_luce_lyrics_basso = \lyricmode {
  La lu- ce_oc- chi miei las- -- si,
  Che da- va lu- c'a vo- i fa giorn' ad al- tri,
  \markup{\italic"fa"} \markup{\italic"gior-"} \markup{\italic"no ad"} \markup{\italic"al-"} \markup{\italic"tri,"}
  Os- -- cu- -- ra not- --\skip4\skip4 te_a no- i,
  On- d'io so- ven- te can- to, 
  \markup{\italic"on-"} \markup{\italic"d'io"} \markup{\italic"so-"} \markup{\italic"ven-"} \markup{\italic"te"} \markup{\italic"ca-"} \markup{\italic"to,"}
Co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} 
ch'in al- trui, ch'in al- trui pon fe- de tan- to,
On- d'io so- ven- te can- to, \markup{\italic"on-"} \markup{\italic"d'io"} \markup{\italic"so-"} \markup{\italic"ven-"} \markup{\italic"te"} \markup{\italic"ca-"} \markup{\italic"to,"}
Co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} co- sì va, \markup{\italic"co-"} \markup{\italic"sì"} \markup{\italic"va,"} 
ch'in al- trui, ch'in al- trui pon fe- de tan- to.
}