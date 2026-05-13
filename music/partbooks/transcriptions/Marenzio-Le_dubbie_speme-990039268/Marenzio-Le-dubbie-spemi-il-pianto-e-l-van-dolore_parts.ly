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
 \key c \major
 
 \time 2/1
  \autoBeamOff
  \set Score.tempoHideNote = ##t
}

marenzio_le_dubbie_spemi_incipit_cantus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Canto" }
	\relative c'{
	\global
	\time 4/4
	%usage double timesig
	 %\override Score.TimeSignature.stencil =
      %#(double-time-signature  "timesig.mensural44" "3" "")
	\clef "petrucci-c1"
	\set Score.timing = ##f
        e\breve
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

marenzio_le_dubbie_spemi_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
  \mark \markup{\italic"Prima Parte"}
  e\breve g1. a2 g1 g1. f1 e2 gis2 a2 b1 b r2 e, g1. a2 g 
  g a1 a r r2 e gis!2 a b1 a r2 g1 a2 a1 b b2 c1 a2 a e g1 
  g\breve r1 r2 b2 a b g1 a2 f e fis! g g a4 b c a g2 g r1 r2 b 
  c4 b a c b2 b g2. g4 g1 g2 e a1 g c2 b a1 g r2 d'1 c b2 
  a\breve b2 g e c c'\breve d1 g,\breve. g1 r2 d'2. c4 b2 c g r2 e'1 b b2 b1 c2 c1 
  b2 a1. g2 a1 b2 d b2. g4 a2 b c1 c2 a1 g2 g1 fis! r r2 g2 e4 f 
  g a b c d c b2 b a a4 b c2 a b\breve e,\longa*1/2
  \bar"||" 
   \pageBreak
   \mark \markup{\italic"Seconda Parte"}
   r1 c'1 a r2 a a a b1 b2 c1 b2 a1 gis!2 b1 \ficta g!2 a2 
   g2. fis!8[e] fis2 g2 e g a g1 r r2 g a b c d e4 e d d 
   g,1 g r2 g c2. b4 a2 g fis!1 a2 b1 c2 d1 e2 e, g1 r2 e g1 a a a1. r2 
   d4. c8 b4 a b4. a8 g4 b b1 a r1 a4. g8 f4 d e2 c r1 r2 a' a e g g 
   a2. a4 a2 a d1. cis!2 r1 a2. g4 f1 e1. d2 a'2. a4 a2 bes!2 a1 d,4 g2 a4 
   b2 d1 e2 a,2. a4 a2 g f1 e2 b' c2. c4 c2 b2 a\breve gis!\longa*1/2
   \bar"||"
 
}

marenzio_le_dubbie_spemi_lyrics_cantus = \lyricmode { 
Le dub -- bie spe -- mi~il __ pian -- to~e'l van do -- lo -- re,
Le dub -- bie spe -- mi~il pian -- to e'l van do -- lo -- re

I pen -- sier fol -- li~e le de -- li -- re~im -- pre -- se

E le que -- re -- le, e le que -- re -- le~in -- dar -- no~al ven -- to spe -- se,
in -- dar -- no~al ven -- to spe -- se,

M’han -- no~a me tol -- to~e po -- sto~in lun -- go~er -- ro -- re,
in lun -- go~er -- ro -- re,

Ma tu del Cie -- lo~e -- ter -- no al -- to mo -- to -- re
La cui __ pie -- tà per -- cor -- re~a no -- stre~of -- fe -- se

Per quel non fin -- to~a -- mor ch’in noi __ t’ac -- ce -- se
Driz -- za~a buon cor -- so~il de -- svi -- a -- to co -- re,
il de -- svi -- a -- to co -- re.

%SECONDA PARTE
Si che s’al co -- min -- ciar di tan -- ti~af -- fan -- ni,
di tan -- ti~af -- fan -- \skip4\skip4 ni,

Pre -- se cam -- min,
Pre -- se cam -- min che'l pas -- so~al ciel li ser -- ra
Al -- men si vol -- ga~a te ne’ mi -- glior an -- ni Si -- gnor
Si -- gnor co -- m’og -- gi 
fla -- gel -- la -- to,
fla -- gel -- la -- to~in ter -- ra,
fla -- gel -- la -- to~in ter -- ra

Col san -- gue ri -- sto -- ra -- sti~i no -- stri dan -- ni
Por -- gi~o -- mai pa -- ce~al -- la mia lun -- ga guer -- ra,
Por -- gi~o -- mai pa -- ce~al -- la mia lun -- ga guer -- ra,
al -- la mia lun -- ga guer -- ra.




}

marenzio_le_dubbie_spemi_incipit_quintus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Quinto" }
	\relative c'{
	\global
	\time 2/2
	%usage double timesig
	 %\override Score.TimeSignature.stencil =
      %#(double-time-signature  "timesig.mensural44" "3" "")
	\clef "petrucci-c4"
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

marenzio_le_dubbie_spemi_quintus = \relative c'{
 \global
  \clef "treble_8"
  %\clef treble
  \mark \markup{\italic"Prima Parte"}
  r1 e\breve c1. b2 c g a1 a b2 c b1 e,\breve r2 g1 c b2 
  a1. e'1 d c2 b a1 g fis!2 r g1 d2 a'1 g g2 c1 f,2 f a g1 c,2 c' b c a1 
  g1 r2 b c b d1 a r r2 c b c a1. gis!2 a4 b c a g2 g b2. b4 
  b2 c1 b2 d1. g,2 a b c d g, g'1 fis!2 g\breve r\breve r2 g,1 e2 e f4 g a b c2. b8[a] 
  b2 c2. b8[a] g1 r2 g2. e4 g2 c, g'r1 g\breve gis!1. gis2 gis1 a2 a1 d, e2 fis! 
  g2. fis!8[e] fis!2 g1 r\breve r\longa r2 a2 b4 a g f e f g2. f4 e2 d d' g,4 a 
  b4 c d2 d c f, d\breve e\longa*1/2 
   \bar"||" 
    \pageBreak
   \mark \markup{\italic"Seconda Parte"}
   r\breve c'1 a r\breve r\longa e1 fis2 g a d c4 c b b c2 a r1 
   r2 d e e d1 r r2 d c4 c b b c2 g r g g2. g4 a2 e' a,1 a2 g 
   d'2 c2. b8[a] b2 c1 r2 c e1 r2 c a a d,1 a' r2 d4. c8 b4 a d,2 d g4. f8 
   e4 d g2. fis!8[e] fis!2 g2 r r1 g4. f8 e4 a2 gis!8[fis!] gis!2 a2 c c2. a4 b2 b 
   c2. c4 c2 d d1 e a,2. g4 f2 e d1 r\longa r2 d'2. c4 b2 g d' r g2 f c e1 d c2 
   b4 b e2. e4 e2 e, e\breve e\longa*1/2
   \bar"||"
  
 
}

marenzio_le_dubbie_spemi_lyrics_quintus = \lyricmode { 
Le dub -- bie spe -- mi~il pian -- to~e'l van do -- lo -- re,
Le dub -- bie spe -- mi~il pian -- to~e'l van do -- lo -- re

I pen -- sier fol -- li~e le de -- li -- re~im -- pre -- se

E le que -- re -- le, e le que -- re -- le, e le que -- re -- le~in -- dar -- no~al ven -- to spe -- se,
%in -- dar -- no~al ven -- to spe -- se,

M’han -- no~a me tol -- to~e po -- sto~in lun -- go~er -- ro -- re,
er -- ro -- \skip4 re,

Ma tu del Cie -- \skip4\skip4\skip4\skip4\skip4\skip4 lo __ \skip4\skip4 
al -- to mo -- to -- re
La cui __ pie -- tà per -- cor -- re~a no -- stre~of -- fe -- \skip4\skip4 se

%Per quel non fin -- to~a -- mor ch’in noi t’ac -- ce -- se
Driz -- za~a buon cor -- so~il de -- svi -- a -- to co -- re,
driz -- za~a buon cor -- so~il de -- svi -- a -- to co -- re.

%SECONDA PARTE
Si che 
%s’al co -- min -- ciar di tan -- ti~af -- fan -- ni,
%di tan -- ti~af -- fan -- ni,

%Pre -- se cam -- min,
Pre -- se cam -- min che'l pas -- so~al ciel li ser -- ra,
Pre -- se cam -- min che'l pas -- so~al ciel li ser -- ra
Al -- men si vol -- ga~a te ne’ mi -- glior an -- \skip4\skip4 ni Si -- gnor
Si -- gnor co -- m’og -- gi 
%fla -- gel -- la -- to,
fla -- gel -- la -- to~in ter -- ra,
fla -- gel -- la -- to~in ter -- \skip4\skip4 ra,
fla -- gel -- la -- to~in ter -- \skip4 ra

Col san -- gue ri -- sto -- ra -- sti~i no -- stri dan -- ni
Por -- gi~o -- mai pa -- ce, Por -- gi~o -- mai pa -- ce
al -- la mia lun -- ga guer -- ra,
al -- la mia lun -- ga guer -- ra.


}

marenzio_le_dubbie_spemi_incipit_altus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\global
	\time 4/4
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

marenzio_le_dubbie_spemi_altus = \relative c'{
  \global
  \clef treble
  \mark \markup{\italic"Prima Parte"}
  r1 c\breve e1. d2 e1 cis!2 d1 cis!2 r1 g'\breve e1. d2 e1. d2 d1 c 
  b2 a gis! gis r2 e' fis! g a d, r d1 f2 e1 g g2 g1 f2 f c d1 
  e1 r2 e f e g d r d e4 f g e f g a1 a2 r2 e c f d e 
  f4 g a f e1 e r2 d2. d4 d1 e g f2 d e1 d2 c b4 a e'1 a, 
  r2 c2 d e fis! g2. fis!8[e] fis!2 g1 r2 e c a a'1. d,2 r c b b2. e4 d2 c 
  b4 g'2 e4 d2 g g r1 e1 e1. e2 e1 e2 a1 g2 f e d1 d r2 d g2. e4 
  fis!2 g a1 g2 f1 d cis!2 d1 d2 g2. f4 e d c d e f g1 g2 d 
  f f e d d\breve cis\longa*1/2 
  \bar"||"
  \pageBreak
   \mark \markup{\italic"Seconda Parte"}
   e1 c r2 c c c d1 d2 e1 e2 f4 e e1 d2 e 
   g g e d1 d r r2 c d e f1 r r4 a g g f e g2 g1 r4 e 
   g4 d e2 d r e e2. g4 fis!2 g a1 fis!2 g1 g2 f1 e r2 e g1 r2 e2 
   c c f1 e f4. e8 d4 fis!4 fis2 fis g4. f8 e4 d g4. f8 e4 d d1 e2 c d 
   d2 g4. a8 g4 f e1 c2 r4 e f2 c d e f2. f4 f2 f f g a1 r2 a,2. b4 
   cis!2 d a' a2. a4 a2 g f4 e8[d] e2 fis!2 g2. fis!8[e] fis!2 g1 r2 a,2. b4 
   c2 d e r e a,2. a4 a2 gis!2 a1 e'1~e\breve~e\longa*1/2
   \bar"||"
   
 
}

marenzio_le_dubbie_spemi_lyrics_altus = \lyricmode { 
Le dub -- bie spe -- mi~il pian -- to,
Le dub -- bie spe -- mi~il pian -- to~e'l van do -- lo -- re,
e'l van do -- lo -- re

I pen -- sier fol -- li~e le de -- li -- re~im -- pre -- se

E le que -- re -- le in -- dar -- no~al ven -- to spe -- \skip4\skip4 se,
e le que -- re -- le~in -- dar -- no~al ven -- to spe -- se,

M’han -- no~a me tol -- to~e po -- sto~in lun -- go~er -- ro -- \skip4\skip4\skip4 re,
in lun -- go~er -- ro -- \skip4\skip4\skip4 re

Ma tu del Cie -- lo e -- ter -- no~al -- to mo -- to -- re, al -- to mo -- to -- re

La cui __ pie -- tà per -- cor -- re~a no -- stre~of -- fe -- se

Per quel non fin -- to~a -- mor ch’in noi __ t’ac -- ce -- se
Driz -- za~a buon cor -- so~il de -- svi -- a -- to co -- re,
il de -- svi -- a -- to co -- re.

%SECONDA PARTE
Si che s’al co -- min -- ciar di tan -- ti~af -- fan -- \skip4\skip4\skip4 ni,
di tan -- ti~af -- fan -- ni,

%Pre -- se cam -- min,
Pre -- se cam -- min che'l pas -- so~al ciel li ser -- ra, al ciel li ser -- ra

Al -- men si vol -- ga~a te ne’ mi -- glior an -- ni Si -- gnor
Si -- gnor co -- m’og -- gi 

fla -- gel -- la -- to~in ter -- ra,
fla -- gel -- la -- to,
fla -- gel -- la -- to~in ter -- ra,
co -- m’og -- gi fla -- gel -- la -- to~in ter -- ra

Col san -- gue ri -- sto -- ra -- sti~i no -- stri dan -- \skip4 ni
Por -- gi~o -- mai pa -- ce~al -- la mia lun -- ga guer -- \skip4\skip4\skip4\skip4\skip4\skip4 ra,
Por -- gi~o -- mai pa -- ce al -- la mia lun -- ga guer -- ra. __
%al -- la mia lun -- ga guer -- ra.


}

marenzio_le_dubbie_spemi_incipit_tenor = \markup { \score {
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

marenzio_le_dubbie_spemi_tenor = \relative c'{
  \global
  \clef "treble_8"
  \mark \markup{\italic"Prima Parte"}
  r\longa r e,\breve g1. a2 g1 e r2 g1 f e2 gis!2 a b1. cis2 d\breve r2 b1 d2 
  cis!1 d d2 e1 c2 d4 c c2. b8[a] b2 c e d e c1 d\breve r1 r2 d2 cis! d b1 a 
  r\breve r2 e' c4 d e c d2 b r g2. g4 g2 c g a1 b r a b2 c d1. e2 r g, a b 
  c2 d g,\breve r2 c a f f'1. e2 e d2. c4 b2 e d r2 g2. e4 d2 e e c1 b1. b2 
  b2 e,1 e' d a bes!2 a a d \ficta b1 g2 d' d f c1 c \ficta bes2 g1 a r r r2 g 
  g4 a b c d1. a2 a a1 gis!4 fis! gis!1 a\longa*1/2
   \bar"||"
   \pageBreak
   \mark \markup{\italic"Seconda Parte"}
   r\breve a1 f r\breve r1 a1 a2 a b1 b2 c1 b2 a1 g r1 r2 g 
   a b c4 c b b a a d2. c2 b4 c2 r4 d e e d d2 c b4 r2 c 
   c2. d4 d2 b d1 d2 d1 g,2 d'1 g,\breve r2 c e1 e d cis! d4. c8 b4 a
   r2 d4. c8 b4 g b2 b r4 b4 d2 a c4. b8 g4 a f4. g8 a4 b \[ c1 b \] a\breve
   r\longa r2 a2. b4 cis!2 d e a,2. b4 cis!1 cis!2 d2. cis!8[b] cis!2 d1 r r2 g,2. e4 
   f2 f e d a' c c f, a r e e2. e4 a2 b c\breve b\longa*1/2
   \bar"||"
  

}

marenzio_le_dubbie_spemi_lyrics_tenor = \lyricmode { 
%Le dub -- bie spe -- mi~il pian -- to~e'l van do -- lo -- re,
Le dub -- bie spe -- mi il pian -- to~e'l van do -- lo -- \skip4 re

I pen -- sier fol -- li~e le de -- li -- re~im -- pre -- \skip4\skip4  se

E le que -- re -- le, e le que -- re -- le 
%in -- dar -- no~al ven -- to spe -- se,
in -- dar -- no~al ven -- to spe -- se,

M’han -- no~a me tol -- to~e po -- sto in lun -- go~er -- ro -- re,
in lun -- go~er -- ro -- \skip4 re,

Ma tu del Cie -- lo~e -- ter -- no~al -- to mo -- to -- re, al -- to mo -- to -- re
La cui __ pie -- tà per -- cor -- re~a no -- stre~of -- fe -- se

Per quel __ non fin -- to~a -- mor ch’in noi __ t’ac -- ce -- se
Driz -- za~a buon cor -- so~il de -- svi -- a -- to co -- \skip4\skip4 re.
%il de -- svi -- a -- to co -- re.

%SECONDA PARTE
Si che s’al co -- min -- ciar di tan -- ti~af -- fan -- ni,
%di tan -- ti~af -- fan -- ni,

%Pre -- se cam -- min,
Pre -- se cam -- min che'l pas -- so~al ciel li ser -- \skip4\skip4 ra,
che'l pas -- so~al ciel li ser -- ra

Al -- men si vol -- ga~a te ne’ mi -- glior an -- ni 
%Si -- gnor
Si -- gnor co -- m’og -- gi 
fla -- gel -- la -- to,
fla -- gel -- la -- to~in ter -- ra,
co -- m'og -- gi fla -- gel -- la -- to, 
fla -- gel -- la -- to~in ter -- \skip4 ra

%Col san -- gue ri -- sto -- ra -- sti~i no -- stri dan -- ni
Por -- gi~o -- mai pa -- ce~al -- la mia lun -- ga guer -- \skip4\skip4 ra,
Por -- gi~o -- mai pa -- ce~al -- la mia lun -- ga guer -- ra,
al -- la mia lun -- ga guer -- ra.
}

marenzio_le_dubbie_spemi_incipit_bassus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
	\relative c{
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


marenzio_le_dubbie_spemi_bassus = \relative c{
  \global
  \clef bass
  \mark \markup{\italic"Prima Parte"}
  r\longa r r1 e\breve c1. b2 c1. g2 d'1 a e'2 f e\breve d r\longa r r\breve r1 r2 g2
  fis!2 g2 e1 d r2 d e4 f g e f1 g2 c, d4 e f d e1 a, r2 g2. g4 
  g1 c e2 d1 g f\breve e1 d2. c4 b2 c g1 r\breve r1 c1 a2 f f'2. e4 d1 c 
  e2 g2. e4 g2 c, g4 g'2 c4 b2 c g c,\breve e1. e2 e1 a,2 a1 b2 d cis! d1 
  d g,2 g'1 e2 d g f1 e2 f1 g2 e1 d2 d g4 f e d c d e b 
  c1 g r2 g'2 d4 e f g a a, d c b\breve a\longa*1/2
 \bar"||"
 \pageBreak
 \mark \markup{\italic"Seconda Parte"}
 r1 a' f r2 f f f g1 g2 a1 g2 f1 e r d d2 d e1 
 e2 f1 e2 d1 c2 e fis! g a g c,4 c b b c2 g r1 r2 c c2. g4 d'2 
 e2 d1 d2 g1 e2 d1 c\breve. r1 r\breve r2 a d1 d g,\breve d'1 c4. d8 e4 f d4. e8 f4 g 
 c,2. d4 e1 a,2 a' f a g g f2. f4 f2 d bes'!1 a r r r2 d, a'2. a4 a2 bes!2 a1 
 d,\breve g2. f4 e2 d1 c2 r a2. b4 c2 d1 e a,2. a4 a2 gis! a\breve e'\longa*1/2 
 \bar"||"
 
  

}

marenzio_le_dubbie_spemi_lyrics_bassus = \lyricmode { 
%Le dub -- bie spe -- mi~il pian -- to~e'l van do -- lo -- re,
Le dub -- bie spe -- mi~il pian -- to~e'l van do -- lo -- re

%I pen -- sier fol -- li~e le de -- li -- re~im -- pre -- \skip4\skip4  se

E le que -- re -- le 
%e le que -- re -- le 
in -- dar -- no~al ven -- to spe -- se,
in -- dar -- no~al ven -- to spe -- se

M’han -- no~a me tol -- to~e po -- sto in lun -- go~er -- \skip4 ro --  \skip4 re
%in lun -- go~er -- ro -- \skip4 re,

Ma tu del Cie -- \skip4\skip4 lo~e -- ter -- no~al -- to mo -- to -- re, al -- to mo -- to -- re
La cui __ pie -- tà per -- cor -- re~a no -- stre~of -- fe -- se

Per quel __ non fin -- to~a -- mor ch’in noi __ t’ac -- ce -- se
Driz -- za~a buon cor -- so~il de -- svi -- a -- to co -- re,
Driz -- za~a buon cor -- so~il de -- svi -- a -- to co -- re.

%SECONDA PARTE
Si che s’al co -- min -- ciar di tan -- ti~af -- fan -- ni,
s’al co -- min -- ciar di tan -- ti~af -- fan -- ni

%Pre -- se cam -- min,
Pre -- se cam -- min che'l pas -- so~al ciel li ser -- ra
Al -- men si vol -- ga~a te ne’ mi -- glior an -- ni 
%Si -- gnor
Si -- gnor co -- m’og -- gi 
fla -- gel -- la -- to,
fla -- gel -- la -- to~in ter -- \skip4\skip4 ra
%fla -- gel -- la -- to~in ter -- ra

Col san -- gue ri -- sto -- ra -- sti~i no -- stri dan -- ni al -- la mia lun -- ga guer -- ra,
Por -- gi~o -- mai pa -- ce,
Por -- gi~o -- mai pa -- ce~al -- la mia lun -- ga guer -- ra.
%al -- la mia lun -- ga guer -- ra.

}