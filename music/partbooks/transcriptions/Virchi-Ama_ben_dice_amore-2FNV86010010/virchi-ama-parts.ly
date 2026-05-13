global = {
  \key f\major
  \time 4/2
  \autoBeamOff
}

virchi_ama_incipit_canto_primo = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Canto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-g"
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
  



virchi_ama_canto_primo = \relative c''{
\key f \major
\clef treble 
\time 4/2
\autoBeamOff
d1 d r4 d bes g bes2 a r1 d 
d r4 f d bes f'1 f2 a~a4 a4 a2 g4 f e f~
f8[e d c] bes4 bes8 bes a[g f g] a2 a a b! d c1. b!2
c2. c4 d2 a c4. c8 d4 d bes2. a4 bes bes bes bes8 bes a4. f8 g4 a
bes2 bes4 bes bes4. bes8 bes4 c f2 f r1 r2 d f1~
f2 es d c bes1 bes2 r2 r\breve r2 d d d 
c4 bes a2 g4 g4. a8[bes c] d4 d8 d bes[c d e] f4 g fis4. fis8 g4 g g2. \ficta fis8[e] fis2 
g1 r r r2 d d d c4 bes a2 
a r4 a4. bes8[c d] e4 f8 f e4 c d g, a a a2
\numericTimeSignature
\time 2/2
a1 
\time 3/2
bes4. bes8 bes4 bes2 bes4 d4. d8 e4 f2 es4 d4. d8 c bes 
bes2 a4
\time 2/2
bes2. d4
\time 4/2
f f d2 bes4 d f f e2 c e8[d c d] e[c e f] 
g2 g r4 d4 bes8[g bes c] d[c d e] f[d f g] a4 g2 \ficta fis4 \mens g\breve \endmens


}

virchi_ama_lyrics_canto_primo = \lyricmode {
  A -- ma, ben di- ce_A- mo -- re,
  A -- ma, ben di- ce_A- mo -- re,
  Gli_oc -- chi_il vi -- so_e le chio -- \skip4\skip4 me, le chio -- \skip4 me,
  Di que -- sta Dea, Di que -- sta Dea, Di que -- sta Dea che_An- ge -- li- ca bel- ta- te,
  Non sta sen- za pie -- ta- te, che_An- ge -- li- ca bel- ta- te,
  Ma las -- so_il fe -- ro no -- me,
  Par che nel cor mi di -- ca:
  Fug -- \skip4\skip4 gi d'A- mo -- \skip4 re_e di pie- tà ne- mi -- \skip4 \skip4 ca,
  Par che nel cor mi di -- ca:
  Fug -- \skip4\skip4 gi d'A- mo -- re_e di pie- tà ne- mi -- ca,
  Bar- ba- ra don -- na, Bar- ba- ra don -- na che gli_a- man -- ti_an -- ci -- \skip4 de, 
  E poi se'n bur -- la, E poi se'n bur -- la_e ri -- \skip4\skip4 de, e ri -- \skip4\skip4\skip4\skip4\skip4 de.
  
}

virchi_ama_incipit_canto_secondo = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Quinto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-g"
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

virchi_ama_canto_secondo = \relative c''{
\key f \major
\clef treble 
\time 4/2
\numericTimeSignature
\autoBeamOff
r1 r4 d bes g bes2 bes d1 d r4 f d bes 
f'2 f r r4 bes, c d c2 d f~f4 f f2 e4 d c2 
d4 f g8[f e d] cis4 d2 cis4 d1. g2 f4 e e d8[c] d2 g 
e1 r2 d e4 e f2 r1 r2 d2 c4. bes8 c4 c 
d2 d4 f g4. f8 g4 es d2 d4 d c4. bes8 c4 c d1 d 
r\breve r2 d f1 es2 d1 c2 bes1 a2 r 
r1 g4. a8[bes c] d4 bes bes g8[a bes c] d4 c a a b!2 c d1
bes2 r4 bes bes2 bes a4 g fis2 g4 bes4. c8[d e ] f2 f2. e4 f2
f r4 c f f e d c8[d e f] g[f e d] cis4 d2 cis4 
d1  d4. d8 d4 es2 d4 bes4. bes8 bes4 c2 c4 bes4. bes8 g4 
f4 f2 f1 r2 r4 d' f f d2 c4 g' e e c2 c 
bes8[a g a] bes[g bes c] d2 d r2 r4 d4 d8[c bes c] d8[c16 bes] a4 \mens \ficta b\breve \endmens

}

virchi_ama_lyrics_canto_secondo = \lyricmode {
  ben di- ce_A- mo -- re, A -- ma, ben di- ce_A- mo -- re, ben di- ce_A- mo -- re,
  Gli_oc -- chi_il vi -- so_e le chio -- me, le chio -- \skip4 \skip4 \skip4 me,
  Di que -- \skip4\skip4\skip4\skip4 sta Dea, Di que- sta Dea,
  Non sta sen- za pie -- ta -- te,
  che_An- ge- li- ca bel- ta -- te,
  Non sta sen- za pie- ta -- te,
  Ma las -- so_il fe -- ro no -- me,
  Fug -- \skip4\skip4 gi d'A -- mo -- \skip4 re_e di pie -- tà ne -- mi -- ca,
  Par che nel cor mi di -- ca:
  Fug -- \skip4\skip4 gi d'A- mo -- re e di pie- tà ne- mi -- \skip4\skip4\skip4\skip4 ca,
  Bar- ba- ra don -- na, Bar- ba- ra don -- na che gli_a- man -- ti_an- ci -- de, 
  E poi se'n bur -- la, E poi se'n bur -- la_e ri -- \skip4\skip4 de, e ri -- \skip4 \skip4 de.
  
}

virchi_ama_incipit_alto = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c2"
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

virchi_ama_alto = \relative c''{
\key f \major
\clef treble 
\time 4/2
\numericTimeSignature
\autoBeamOff
r1 g g r4 g f d bes'2. bes4 r d bes g 
a2 a4 a f d f g a bes2 a4 bes2 c~c4 c c2 c4 a a2 
a4 bes bes8[a g f] e4 d e2 fis1 r2 d a' g g1~
g2 a g f e d g4. f8 g4 es f2 f4 f f4. d8 \ficta es4 f 
\grace{bes2} bes,2 \grace{bes'4} bes,4 bes'4 g4. bes8 g4 a bes2 bes4 bes a4. bes8 g4 a bes2 bes r bes
bes1 bes2 a~a g f1 g2 g a g g f4 e f2. g4 
a4 g f2. e4 g2 g g f4 es d2~d \ficta es4 g a1
g4 \small g4. a8[bes c] d4 d,8 \normalsize d bes8[c d e] f4 g a4. a8 bes2 bes a bes a4 g a8[g f e] 
f2. e4 r4 a g f a8 bes a4 bes2 r1 
r1 d,4. d8 bes4 bes2 d4 d4. d8 g4 a2 g4  f4. f8 es4
d4 c2 d1 r4 d4 f f d2 d r4 e g g e2 g 
r4 g4 g8[d g a] bes[g bes a] g2 a2. a4 fis g a2 \mens g\breve \endmens 



}


virchi_ama_lyrics_alto = \lyricmode {
  A -- ma, ben di- ce_A- mo -- re, ben di- ce_A- mo -- re, ben di- ce_A- mo -- \skip4\skip4\skip4\skip4 re,
  Gli_oc -- chi_il vi -- so_e le chio -- me, le chio -- \skip4\skip4\skip4 me,
  Di que -- sta Dea, Di que -- sta Dea che_An -- ge- li- ca bel- ta -- te,
  Non sta sen- za pie- ta -- te, che_An -- ge- li- ca bel- ta -- te, Non sta sen- za pie- ta -- te, 
  Ma las -- so_il fe -- ro no -- me, Ma las -- so_il fe -- \skip4\skip4\skip4\skip4\skip4 ro no -- me, 
  Par che nel cor mi di -- ca, mi di -- ca: 
  Fug --  \skip4\skip4 gi d'A- mo -- \skip4 re_e di pie- tà, e di pie --  tà ne- mi -- \skip4 ca, 
  e di pie-  tà ne- mi- ca,
  Bar- ba- ra don -- na,  Bar- ba- ra don -- na che gli_a- man -- ti_an -- ci -- de, 
  E poi se'n bur -- la, E poi se'n bur -- la  e ri -- \skip4\skip4 de, e ri -- \skip4\skip4 de.
  
}

virchi_ama_incipit_tenore = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c3"
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

virchi_ama_tenore = \relative c'{
\key f \major
\clef "treble_8" 
\time 4/2
\numericTimeSignature
\autoBeamOff
r\breve r1 r2 r4 d bes g bes2 bes r 
d1 d2. g4 f d f2 bes, f~f4 f f2 c'4 d a'8[g f e]
d8[c bes a] g2 a1 d1. b!2 c2. e4 d2 d 
c2. e4 d2 r2 r4 a2 bes4. a8 bes2 c4 d2 d r1
r2 d es4. f8 es4 es f2 f4 f f4. f8 \ficta es4 c f1 f2 f 
g1 f2 f~f es d c~c bes a c g d' d bes 
f4 g a bes c2 g r1 r2 r4 d' g,4. g8 c4 es d1
g,2 d' bes4. bes8 bes4 bes c2 d2. g,4. a8[bes c] d4 d8 d bes8[c d e] f4 g f d 
d2. c4 c2 c4 f c c bes d e f e2
\ficta fis1 g4. g8 g4 
g2 f4 g4. g8 g4  c,2 c4 r2. r2. r4 d f f d2 bes r4 d bes bes g2 c4 e g g e2 
d2 r4 d4 d8[c bes c] d[bes d e] f[e f g] a[g f e] d1 \mens d\breve \endmens

}

virchi_ama_lyrics_tenore = \lyricmode {
  ben di- ce_A- mo -- re, A -- ma, ben di- ce_A- mo -- re,
  Gli_oc -- chi_il vi -- so_e le chio -- \skip4\skip4\skip4 me,
  Di que -- sta Dea, Di que -- sta Dea che_An -- ge- li- ca bel- ta -- te,
  che_An -- ge- li- ca bel- ta -- te,
  Non sta sen- za pie- ta -- te,
  Ma las -- so_il fe -- ro no -- \skip4\skip4 me,
  Ma las -- so_il fe -- ro no -- \skip4\skip4\skip4\skip4 me,
  e di pie- tà ne- mi -- ca,
  Par che nel cor mi di -- ca:
  Fug -- \skip4\skip4 gi d'A- mo -- \skip4 re_e di pie -- tà ne -- mi -- ca,
  d'A- mo- re_e di pie- tà ne- mi -- ca,
  Bar- ba- ra don -- na, Bar- ba- ra don -- na,
  E poi se'n bur -- la, E poi se'n bur -- la, E poi se'n bur -- la e ri -- \skip4\skip4\skip4\skip4 de.
  
}

virchi_ama_incipit_basso = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
	\relative c'{
	\global
	\time 4/4
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

virchi_ama_basso = \relative c{
\key f \major
\clef bass 
\time 4/2
\numericTimeSignature
\autoBeamOff
R\breve*7 
r1 g' a2 c g1
r2 a b d a d, es4. d8 es4 c bes2 bes r1 
r2 bes \ficta es4. d8 \ficta es4 c bes2 bes4 bes f'4. d8 \ficta es4 f bes,1 bes 
r1 r2 f' bes1. a2 g1 f2 es~es d r1 
r\breve r r 
r2 g g g f4 es d2 g r r1 r2 r4 d4~
d8[e f g] a4 a8 a f8[g a bes] c4 d a a g bes a1
d,1 g4. g8 g4
es2 bes'4 g4. g8 g4 f2 c4  d4. d8 
 es4 bes4 f'2 bes,1 bes bes2 bes \mens c\breve g' d g\endmens \bar"||"

}

virchi_ama_lyrics_basso = \lyricmode {
  Di que -- sta Dea, Di que -- sta Dea che_An -- ge- li- ca bel- ta -- te,
  che_An -- ge- li- ca bel- ta -- te,
  Non sta sen- za pie- ta -- te,
  Ma las -- so_il fe -- ro no -- me,
  Par che nel cor mi di -- ca:
  Fug -- \skip4 gi d'A- mo -- \skip4 re_e di pie- tà ne- mi -- ca,
  Bar- ba- ra don -- na, Bar- ba- ra don -- na che gli_a- man- ti_an- ci -- de, 
  E poi se'n bur -- la_e ri -- de.
  
}