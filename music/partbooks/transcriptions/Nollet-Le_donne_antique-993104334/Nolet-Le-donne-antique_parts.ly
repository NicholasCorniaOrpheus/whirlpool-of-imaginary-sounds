ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }

global = {
 \key f \major
 \time 2/1
  \autoBeamOff
}

nolet_donne_incipit_cantus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Cantus" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-c1"
	\set Score.timing = ##f
	r2 f
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

nolet_donne_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
  r2 f f g a1. a2 g bes a g2~g4 f4 f1 e2 f1 \[ r1 r \] \[ r r \] r2 c' c a d2. c4 bes2 g c2. bes4 a2 f g1 a\breve g r
  r2 c c c a1. a2 bes2. a4 g f g2~g4 f4 f1 e2 f a a a a1 g1~g r1 r2 c1 bes2 a g a bes c d2. c4 c2~c \ficta b2 c2. \ficta bes4 a2 g 
  f2 g f e4 d e1~e\breve r\breve r r r1 r2 a a bes a g a g4 f g1 f\breve r2 g a c2~c \ficta b2 c1~c r1 r2 c1 bes2 c a g bes a f g1 r2 f
  e4 d g2~g4 f4 f1 e2 f1 r2 c'2~c bes2 c a g1 r c bes2 d2~d4 c4 c1 bes2 c\breve c a1. a2 a1 a bes\breve a a1 a g\breve g2 r4 g f e \small d4 d \normalsize 
  g2 g a g2~g4 e4 g2. f4 f2~f e2 f1 f f2 f a\breve g r r r2 c1 g2 e'2 d2. c4 c2~c \ficta b2 c1 f, g a2 c1 c2 bes a g1 f\breve~f r r r 
  r2 a2. a4 a2 g f e g a g2. f4 f2~f e2 \small f1~ \normalsize f\longa~f\breve~f\longa*1/2 \bar"||"
   
}

nolet_donne_lyrics_cantus = \lyricmode { 

Le don -- ne_an -- ti -- que_han -- no mi -- ra -- bil __ \skip4 co -- \skip4 se,
%\markup{\italic"le"} \markup{\italic"don"} -- \markup{\italic"ne an"} -- \markup{\italic"ti"} -- \markup{\italic"que han"} -- \markup{\italic"no"} \markup{\italic"mi"} -- \markup{\italic"ra"} -- \markup{\italic"bil"} \markup{\italic"co"} -- \markup{\italic"se,"}
Fat -- to nel -- l’ar -- me_e nel -- le sa -- \skip4\skip4 cre mu -- \skip4 se,
%\markup{\italic"fat"} -- \markup{\italic"to"} \markup{\italic"nel"} -- \markup{\italic"l'ar"} -- \markup{\italic"me e"} \markup{\italic"nel"} -- \markup{\italic"le"} \markup{\italic"sa"} -- \markup{\italic"cre"} \markup{\italic"mu"} -- \markup{\italic"se,"}
%fat -- to nel -- l’ar -- me_e nel -- le sa -- cre mu -- se,
e nel -- le sa -- cre mu -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4 se,
E di lor o -- pre
bel -- le_e glo -- ri -- o -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 se,
%e di lor o -- pre bel -- le_e glo -- ri -- o -- se,
%e di lor o -- pre bel -- le_e glo -- ri -- o -- se,

Gran lu -- me_in tut -- to_il mon -- \skip4\skip4\skip4 do
si dif -- fu -- \skip4 se,
si dif -- fu -- \skip4\skip4\skip4\skip4\skip4 se,
\markup{\italic"si"}  \markup{\italic"dif"} -- \skip4 \markup{\italic"fu"} -- \skip4\skip4\skip4  \markup{\italic"se,"}
si dif -- fu -- \skip4 se,
si dif -- fu -- \skip4\skip4\skip4 se,



Ar -- pa -- li -- ce_e Ca -- mil -- la son fa -- mo -- se,
per -- ché_in bat -- ta -- glia_e -- ra -- no_es -- per -- te ed u -- \skip4\skip4\skip4 se,
Saf -- (f)o_e Co -- rin -- na,
per -- ché fu -- ron __ \skip4 dot -- \skip4 te, dot -- te,
per -- ché fu -- ron dot -- \skip4 te,
%per -- ché fu -- ron dot -- te,

Splen -- do -- no_il -- lu -- stri_e non veg -- gon ma -- i not -- \skip4 te.
%splen -- do -- no_il -- lu -- stri_e mai non veg -- gon not -- te,
  
}

nolet_donne_incipit_altus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-c2"
	\set Score.timing = ##f
	r2 d
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

nolet_donne_altus = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
  r2 c d e f1. f2 e2 d f4 e d c d1 c2 c c d e f f f f f g1 a1~a \[ r1 r \] \[  r r \] r1 c,2 c a d2~d4 c4 bes2 
  g c2~c4 bes4 a2 f f'2~f e2 f1~f f2. e4 d c d2. c4 c2~c bes2 c1~c r2 f f f e d4 c d1 c2 g'2~g f2 e d f e d1 c2 g' e f g1 
  e2 f c e f e d1 g r2 g g a g f g1~g2 g2 a f g\breve a r r r1 r2 f2~f e2 f a2~a g4 f e2 a g2. \ficta f8[g] a2 g e f d1 f 
  e2 d f c2. d4 e2 c d g c, d1 c r2 f1 e2 f d c1 r2 g' a g e f g f a1 g1~g r1 f\breve f1. f2 f1 f d\breve f f1 f d\breve
  e2 r4 e d g f d e2 e f d e1 d c\breve d1 d c f e\breve g1. g2 f e d1 c\breve r1 r2 g'2~g g2 f e d4 c f1 e2 f\breve r r2 d2. d4 d2 
  c2 bes a c d c2. bes4 bes2~bes a2 bes2. c4 d e f1 e2 f\breve r2 d g e f c2. a4 bes2 c1 a r2 d2. d4 d2 c bes a c d c bes1 \normalsize a\longa*1/2
  
}

nolet_donne_lyrics_altus = \lyricmode { 

Le don -- ne_an -- ti -- que_han -- no mi -- ra -- \skip4 bil __ \skip4 co -- se,
\markup{\italic"le"} \markup{\italic"don"} -- \markup{\italic"ne an"} -- \markup{\italic"ti"} -- \markup{\italic"que han"} -- \markup{\italic"no"} \markup{\italic"mi"} -- \markup{\italic"ra"} -- \markup{\italic"bil"} \markup{\italic"co"} -- \markup{\italic"se,"}
Fat -- to nel -- l’ar -- me_e nel -- le sa -- \skip4\skip4 cre mu -- \skip4 se,
sa -- \skip4\skip4\skip4 cre __ \skip4 mu -- \skip4 se,
%\markup{\italic"fat"} -- \markup{\italic"to"} \markup{\italic"nel"} -- \markup{\italic"l'ar"} -- \markup{\italic"me e"} \markup{\italic"nel"} -- \markup{\italic"le"} \markup{\italic"sa"} -- \markup{\italic"cre"} \markup{\italic"mu"} -- \markup{\italic"se,"}
%fat -- to nel -- l’ar -- me_e nel -- le sa -- cre mu -- se,
%e nel -- le sa -- cre mu -- se,
E di lor o -- \skip4\skip4\skip4 pre 
bel -- le_e glo -- ri -- o -- \skip4\skip4 se,
e di lor o -- pre bel -- le_e glo -- ri -- o -- \skip4 se,
%e di lor o -- pre bel -- le_e glo -- ri -- o -- se,

Gran lu -- me_in tut -- to_il mon -- do si dif -- fu -- se,
si dif -- fu -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 se,

\markup{\italic"gran"} \markup{\italic"lu"} -- \markup{\italic"me in"} \markup{\italic"tut"} -- \markup{\italic"to il"} \markup{\italic"mon"} -- \skip4 \markup{\italic"do"}
\markup{\italic"si"}  \markup{\italic"dif"} -- \markup{\italic"fu"} -- \skip4\skip4 \markup{\italic"se,"}
si dif -- fu -- \skip4 se,
si dif -- fu -- \skip4\skip4\skip4\skip4\skip4 se,


Ar -- pa -- li -- ce_e Ca -- mil -- la son fa -- mo -- se,
per -- ché_in bat -- ta -- glia_e -- ra -- no_es -- per -- te_ed u -- \skip4 se,
Saf -- (f)o_e Co -- rin -- na,
per -- ché fu -- ron dot -- te,
per -- ché fu -- ron dot -- \skip4\skip4\skip4 te,
%per -- ché fu -- ron dot -- te,

Splen -- do -- no_il -- lu -- stri_e non veg -- gon ma -- i not -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4 te,
e non veg -- gon ma -- i not -- \skip4 te,
splen -- do -- no_il -- lu -- stri_e non veg -- gon mai not -- te.

  
}

nolet_donne_incipit_quintus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Quinto" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-c3"
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

nolet_donne_quintus= \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
  r\breve r r r1 r2 g a bes c c c c d f2~f e2 f1 f2 f d g2~g4 f4 e2 c f2~f4 e4 d2 bes c f,1 f'2 f d g2. f4 e2 
  c2 f2. e4 d2 c1 a2. g4 a bes c2 f,1 g2 g'1 e2 f d e4 d c bes a2 a c c c1 c2 c2~c bes2 a g a1 g r1 r2 g2 c bes c1 d 
  c2 a2~a4 bes4 c2 f, c'2~c2 \ficta b2 c1~c r2 e e f e d e1 e2 f e d4 c d2 e f\breve r2 f1 e2 f d c1 f,\breve r r1 r2 f'2~f e2 f d c1 r1 r2 c1 bes2
  c2 a g1 a2 f g1 f r2 c'2~c bes2 c1 f,2 g a f c'1 f,2 g a f r2 d' e f d1 c\breve c c1. c2 d1 d bes\breve c c1 c2 c2~c bes4 a bes1 
  c2 r4 c a c c bes c2 e d d c e f d e4 d c bes a1 bes bes2 bes a\breve c r2 c1 g2 bes c g g r1 r2 g'2~g g2 f e d1 c 
  r\breve r2 c1 c2 d f1 e2 f\breve r r r1 r2 d2~d4 d4 d2 c c a c d c2~c4 a4 bes2 c1~c f,1 r2 c'2. c4 d2 a a bes1 a2 d c a bes c d1 c\longa*1/2
  
  
}

nolet_donne_lyrics_quintus = \lyricmode { 

Le don -- ne_an -- ti -- que_han -- no mi -- ra -- bil co -- se,
%\markup{\italic"le"} \markup{\italic"don"} -- \markup{\italic"ne an"} -- \markup{\italic"ti"} -- \markup{\italic"que han"} -- \markup{\italic"no"} \markup{\italic"mi"} -- \markup{\italic"ra"} -- \markup{\italic"bil"} \markup{\italic"co"} -- \markup{\italic"se,"}
Fat -- to nel -- l’ar -- me_e nel -- le sa -- \skip4 cre mu -- \skip4 se,
\markup{\italic"fat"} -- \markup{\italic"to"} \markup{\italic"nel"} -- \markup{\italic"l'ar"} -- \markup{\italic"me e"} \markup{\italic"nel"} -- \markup{\italic"le"} \markup{\italic"sa"} -- \skip4\skip4 \markup{\italic"cre"} \markup{\italic"mu"} -- \skip4\skip4\skip4\skip4 \markup{\italic"se,"}
%fat -- to nel -- l’ar -- me_e nel -- le sa -- cre mu -- se,
e nel -- le sa -- cre mu -- \skip4\skip4\skip4 se,
E di lor o -- pre bel -- le_e glo -- ri -- o -- se,
%e di lor o -- pre bel -- le_e glo -- ri -- o -- se,
e glo -- ri -- o -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 se,

Gran lu -- me_in tut -- to_il mon -- do si __ \skip4 dif -- \skip4 fu -- \skip4 se,
si dif -- fu -- \skip4\skip4 se,

\markup{\italic"si"}  \markup{\italic"dif"} -- \markup{\italic"fu"} -- \skip4 \markup{\italic"se,"}
\markup{\italic"si"}  \markup{\italic"dif"} -- \markup{\italic"fu"} -- \skip4\skip4\skip4\skip4\skip4 \markup{\italic"se,"}
si dif -- fu -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 se,
si dif -- fu -- \skip4 se,
Ar -- pa -- li -- ce_e Ca -- mil -- la son fa -- mo -- \skip4\skip4\skip4 se,
per -- ché_in bat -- ta -- glia_e -- ra -- no_es -- per -- te_ed u -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4 se,
Saf -- (f)o_e Co -- rin -- na,
per -- ché fu -- ron dot -- te,
\markup{\italic"per"} -- \markup{\italic"ché"} \markup{\italic"fu"} -- \markup{\italic"ron"} \markup{\italic"dot"} -- \markup{\italic"te,"}
per -- ché fu -- ron dot -- te,

Splen -- do -- no_il -- lu -- stri_e non veg -- gon ma -- i not -- \skip4 te,
splen -- do -- no_il -- lu -- stri_e non veg -- gon ma -- i not -- \skip4\skip4  te.

  
  
}

nolet_donne_incipit_tenor = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
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


nolet_donne_tenor = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
  f,1 bes2 g f f f4 g a bes c2 bes d4 c bes a bes a g f g1 f \[ r1 r \] \[ r r\] c'2 c a d2. c4 bes2 g c2. bes4 a2 f f'1 e2 
  f2. e4 c2 d bes g c2. bes4 a2 f2 a bes g1 f2 c'2 c a d2. c4 bes2 g c2. bes4 a2 f g1 f2 f a a a g4 f g1~g \[ r r \]  r1 r2 c1 bes2 a g a1 g
  r1 r2 c, d e f1 g1~g \[ r r \]  \[ r r \] \[ r r \] r1 r2 c c d c bes c1 f,2 f'1 e2 f d c1 d2 bes c1 d c r2 c1 bes2 c a g bes a f g1 f2. e4 \small c2 \normalsize c'2~c bes2 
  c2 g a bes g a2~a g4 f g1  r r2 f'2~f e2 f d c1 d2 bes c a bes1 g r a\breve a1. a2 a1 a2 d2~d4 c4 bes1 a4 g a\breve a1 a bes1. g2 g r4 c 
  f, g a bes g2 c c bes c2. bes4 a2 bes g1 f r2 f f f f4 g a bes c1~c2 g2 r2 c2~c g2 e' d2~d4 c4 c1 \ficta b2 c1 r2 c2~c g2 a c g1 r2 c d c1 bes2
  c f,4 g a bes c a bes2 f c'1 f,2 bes2. bes4 bes2 a d c4 bes a g a2 g2. f4 f2~f e2 f bes2~bes4 bes4 bes2 a g f a2. g4 a bes c2 f, g1 f2 g a f g1 \small f1~ \normalsize f\longa~f\breve~f\longa*1/2
 
}

nolet_donne_lyrics_tenor = \lyricmode { 

Le don -- ne_an -- ti -- que han -- \skip4\skip4\skip4 no mi -- ra -- \skip4\skip4\skip4\skip4\skip4 bil __ \skip4 co -- se,
%\markup{\italic"le"} \markup{\italic"don"} -- \markup{\italic"ne an"} -- \markup{\italic"ti"} -- \markup{\italic"que han"} -- \markup{\italic"no"} \markup{\italic"mi"} -- \markup{\italic"ra"} -- \markup{\italic"bil"} \markup{\italic"co"} -- \markup{\italic"se,"}
Fat -- to nel -- l’ar -- me_e nel -- le sa -- \skip4\skip4 cre mu -- \skip4 se, __ \skip4\skip4
%\markup{\italic"fat"} -- \markup{\italic"to"} \markup{\italic"nel"} -- \markup{\italic"l'ar"} -- \markup{\italic"me e"} \markup{\italic"nel"} -- \markup{\italic"le"} \markup{\italic"sa"} -- \markup{\italic"cre"} \markup{\italic"mu"} -- \markup{\italic"se,"}
e nel -- le sa -- \skip4\skip4 cre mu -- \skip4\skip4 se,
fat -- to nel -- l’ar -- me_e nel -- le sa -- \skip4\skip4 cre mu -- se,


E di lor o -- \skip4\skip4 pre 
bel -- le_e glo -- ri -- o -- se,
e glo -- ri -- o -- se,
%e di lor o -- pre bel -- le_e glo -- ri -- o -- se,

Gran lu -- me_in tut -- to_il mon -- do si dif -- fu -- \skip4\skip4\skip4\skip4\skip4\skip4 se,
si dif -- fu -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 se,

\markup{\italic"si"}  \markup{\italic"dif"} -- \markup{\italic"fu"} -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4 \markup{\italic"se,"}
si dif -- fu -- \skip4 se,
si __ \skip4 dif -- \skip4 fu -- se,
Ar -- pa -- li -- ce_e Ca -- mil -- \skip4\skip4\skip4\skip4 la son fa -- mo -- \skip4 se,
per -- ché_in bat -- ta -- glia_e -- ra -- no_es -- per -- te_ed u -- \skip4\skip4\skip4\skip4 se,
Saf -- (f)o_e Co -- rin -- \skip4\skip4\skip4\skip4 na,
per -- ché fu -- ron __ \skip4 dot -- \skip4 te,
fu -- ron dot -- \skip4 te,
per -- ché fu -- ron dot -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 te,

Splen -- do -- no_il -- lu -- stri_e non __ \skip4 veg -- \skip4 gon ma -- i not -- \skip4 te.
splen -- do -- no_il -- lu -- stri_e non veg -- \skip4\skip4\skip4\skip4 gon mai not -- \skip4\skip4\skip4\skip4 te.

  
}

nolet_donne_incipit_bassus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
	\relative c'{
	\global
	\time 2/2
	\clef "petrucci-f3"
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


nolet_donne_bassus = \relative c{
  \global
  \clef bass
  r\breve r r r1 c f2 d c f f f bes2. a4 g1 f1~f  \[ r r \]  \[ r r \] r1 r2 f f d g2. f4 e2 c f2. e4 d2 bes c1 r1 f2 f 
  f d g2. f4 e2 c d1 c r2 f f f f1 c r1 \[ r r \] \[ r r \] \[ r r \]  \[ r r \] r2 f2~f e2 d c d1 c1~c c'1 c2 d c bes c1 c2 d c bes4 a bes2 c 
  f,\breve r r r2 bes1 a2 bes g f1~f2 g2 a f c'1 f,2 g a f g1 f r1  r2 f1 e2 f d c \ficta es d bes c1 d c r\breve r2 c'1 bes2 c a 
  g bes a f g1 c, r1 f\breve f1. f2 d1 d g\breve f f1 f g\breve c,2 r4 c d e f g c,2 c f g c,1 d2 bes c1 r bes1 bes2 bes 
  f'\breve c\breve~c1 r\breve r r r1 r2 g'2 a4 bes c a bes2 a g1 f\breve r\breve r2 bes,2. bes4 bes2 f' bes, f'2. e4 d2 \ficta es2. d4 bes2 c1 bes~bes c \normalsize r2 f2. f4 f2 e d 
  c c f e d1 c r2 d2~d4 d4 d2 bes bes f' bes, f' f bes, a bes1 f'\longa*1/2 
  
  
  
  
}

nolet_donne_lyrics_bassus = \lyricmode { 

Le don -- ne_an -- ti -- que_han -- no mi -- ra -- bil co -- se,
%\markup{\italic"le"} \markup{\italic"don"} -- \markup{\italic"ne an"} -- \markup{\italic"ti"} -- \markup{\italic"que han"} -- \markup{\italic"no"} \markup{\italic"mi"} -- \markup{\italic"ra"} -- \markup{\italic"bil"} \markup{\italic"co"} -- \markup{\italic"se,"}
Fat -- to nel -- l’ar -- me_e nel -- le sa -- cre mu -- \skip4 se,
%\markup{\italic"fat"} -- \markup{\italic"to"} \markup{\italic"nel"} -- \markup{\italic"l'ar"} -- \markup{\italic"me e"} \markup{\italic"nel"} -- \markup{\italic"le"} \markup{\italic"sa"} -- \markup{\italic"cre"} \markup{\italic"mu"} -- \markup{\italic"se,"}
%fat -- to nel -- l’ar -- me_e nel -- le sa -- cre mu -- se,
e nel -- le sa -- \skip4 cre mu -- \skip4\skip4 se,
E di lor o -- pre bel -- le_e glo -- ri -- o -- se,
%e di lor o -- pre bel -- le_e glo -- ri -- o -- se,
%e di lor o -- pre bel -- le_e glo -- ri -- o -- se,

Gran lu -- me_in tut -- to_il mon -- do si __ \skip4 dif -- \skip4 fu -- \skip4 se,
si dif -- fu -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 se,
si dif -- fu -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4 se,
%\markup{\italic"si"}  \markup{\italic"dif"} -- \markup{\italic"fu"} -- \markup{\italic"se,"}
si dif -- fu -- \skip4\skip4\skip4\skip4\skip4\skip4 se,

Ar -- pa -- li -- ce_e Ca -- mil -- la son fa -- mo -- se,
per -- ché_in bat -- ta -- glia_e -- ra -- no_es -- per -- te_ed u -- \skip4\skip4 se,
Saf -- (f)o_e Co -- rin -- na,
per -- ché __ \skip4\skip4\skip4 fu -- ron dot -- te,
%per -- ché fu -- ron dot -- te,
%per -- ché fu -- ron dot -- te,

Splen -- do -- no_il -- lu -- stri_e non veg -- gon ma -- i not -- \skip4\skip4 te,
splen -- do -- no_il -- lu -- stri_e non veg -- gon mai not -- te,
splen -- do -- no_il -- lu -- stri_e non veg -- gon mai not -- \skip4\skip4 te,

  
}