global = {
  \key f \major
  \time 4/2
  \autoBeamOff
}

agostini_cantava_incipit_canto_primo = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { \column{\line{Canto} \line{ Primo} } }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-g"
	\set Score.timing = ##f
	d'2
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }



agostini_cantava_canto_primo = \relative c''{
  \clef treble
  \key f\major
  \autoBeamOff
  \numericTimeSignature
  \time 4/2
  d2 g,4 a bes c d2 g, g'2. f4 d e f2 f g f4 e d c bes2. a8 [g] a2 bes 
  bes2. a4 g2 bes c bes bes a4 g a bes c bes8 [c] d2 c1 r2 bes2 a4 bes c2 bes a8 [g a bes] c4. d8 
  es!4 es d d4. \ficta e8 f4 d2 d r1 r2 d bes1 a2 a d1 cis! d2. d4 f2 f4. e8 d4. c8 
  bes4. c8 d4. e8 f4. e8 d4. c8 bes4. bes8 bes4 a g g'2 \ficta fis8 [e] \ficta fis2 g1 r d2 d4 d bes2 
  c4 c d es d2 r4 c \ficta e8 d e f g2 c, r d c4 d e e f2 e r a, 
  \stemUp \ficta bes!8 [a bes c d c d e] \stemNeutral f4 f e4. d8 c2 c4 g \stemUp a8 [g a bes c bes c d] \stemNeutral e4 f2 e4 d2 d 
  r1 r2 d2 b!8 [c d b! c d e f] g4. f8 e2 d d1 d2 cis!1 d2 b! c1 b! r2 r4 c d2. e4 
  f2 e g1. f2 e1 d2 d es1 d r\breve r2 fis!2 g1 g2 g2. \ficta fis8 [e] \ficta fis2 \mens g\longa \endmens  
}

agostini_cantava_lyrics_canto_primo = \lyricmode {
  Can -- ta -- \skip4\skip4\skip4\skip4 va_in ri -- \skip4\skip4\skip4 va_al fiu -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 me
  Tir -- \skip4\skip4 si d'E -- le -- o -- no --\skip4\skip4\skip4\skip4\skip4\skip4 ra,
  E ri- spon- dean le sel -- \skip4\skip4 ve e l'on- de_ho -- \skip4\skip4 no -- ra, ho -- no -- ra, ho -- no -- ra.
  E pa- rea mor- mo- ran- do, mor- mo- ran- do, mor- mo- ran- do, mor- mo- ran- do Dir l'o -- \skip4\skip4 ra,
  ho- ra che_ap- pa- re l'Au- ro- ra par,
  che lie- ta_es- ca dal ma -- re,
  Hor chi l'ho- no- ra_a- man -- do?
  E l'ac -- \skip4 que_in- sie -- \skip4\skip4 me,
  E l'ac -- \skip4\skip4 que_in- sie -- me,
  ei ra -- \skip4\skip4\skip4 mi.
  Hor chi fia che l'ho -- no -- ri,
  e che non l'a -- mi?
  Hor chi fia, che l'ho -- no -- ri,
  e che non l'a -- \skip4\skip4 mi?
}

agostini_cantava_incipit_canto_secondo = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Quinto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-g"
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

agostini_cantava_canto_secondo = \relative c''{
  \clef treble
  \autoBeamOff
  \key f\major
  \time 4/2
  \numericTimeSignature
  r2 d g,4 a bes c d2 g, bes1 a2 d d d4 e f e d g, c2 c d1 
  d2 d es1 d r\breve r2 f e4 f g2 c,2 g'4 f8 [e] d1 g,2 r r1 r\breve r r2 d' bes1 a a2. bes4 
  c2 d4. e8 f4. e8 d4. c8 bes4. c8 d4. e8 f4. e8 d4. d8 d4 d c2 bes4 a d2 
  \mens b\breve \endmens r\breve r2 r4 d4 e?8 d e f g2 g,4 g a8 g a bes c2 b2 r c c4 d 
  cis!4 cis d b r2 r \ficta bes \stemUp a8 [g a bes c bes c d] \stemNeutral  e [d e f] g4 g f2 e c c4 c 
  b2 b r1 r r4 g a8 [\ficta b! c a] b! [\ficta cis] d2 cis!4 d2 g2~g f2 e1 d2 d es1 d r r\breve r2 d1 d2 
  cis1 d2 b c1 b r2 r4 \ficta c f e d2 cis!2 d b \ficta cis \mens d\breve b\longa \endmens
}

agostini_cantava_lyrics_canto_secondo = \lyricmode {
 Can -- ta -- \skip4 \skip4\skip4\skip4 va_in ri -- va_al fiu -- me Tir -- \skip4\skip4\skip4\skip4\skip4\skip4 si d'E -- le -- o -- no -- ra,
  E ri- spon- dean le sel -- \skip4 \skip4 ve, ho -- no --  ra,
  E pa- rea mor- mo- ran- do, mor- mo- ran- do, mor- mo- ran- do, mor- mo- ran- do
  Dir l'o -- \skip4\skip4 ra,
  
  che lie- ta_es- ca dal ma- re,
  che lie- ta_es- ca dal ma -- re,
  
  Hor chi l'ho- no- ra_a- man- do?
  E l'ac -- \skip4\skip4 que_in- sie -- me,
  E l'ac -- que_in- sie -- me,
  ei ra -- \skip4\skip4\skip4 mi,
  Hor chi fia che l'ho -- no -- ri,
  Hor chi fia che l'ho -- no -- ri,
  e che non l'a -- mi? e che non l'a -- mi? 
}

agostini_cantava_incipit_alto = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c1"
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

agostini_cantava_alto = \relative c'{
  \clef treble
  \autoBeamOff
  \key f\major
  \numericTimeSignature
  \time 4/2
  r1 d'2 g,4 a bes c d2 g,1 r2 d d4 e f g a2 d, f2. f4 f2 f 
  g4 a bes a g2 g g1 c2. bes4 a2 bes a4 g a bes c2 d r1 r2 f, e4 f g4. a8 bes2 bes 
  bes2 a4 g a1 a2 a2. g4 g2~g4 \ficta fis4 fis e8 [fis] g1 e1 fis!2. g4 c, \ficta f2 f4 f2 bes, f'4. e8 
  d4. c8 bes4. c8 d4 bes f' d g2 d' a r1 r2 g2~g4 g4 f2 es! es!4 c g'2 g g1 r2 r4 f
  e8 d e f g2 a g a4 a a2 a4 g2 fis!4 g2 r r e e2. c'4 c4. bes8 a2 
  g4 a g c, d2 d4 g g8 [a bes g a bes c d] bes4. a16 [g] a2 g r r1 bes1~bes2 a2 a1 a2 d, 
  g1 g2 r4  g2 c4. bes8 a4~a g8 [f] g2 a1 r2 bes1 a2 a1 a2 d, g1 g2 r4 g4~g c4. bes8 a2 g4 g f8 [g] a2 a4 a g2. a4 bes2 bes a1 \mens g\longa \endmens 
}

agostini_cantava_lyrics_alto = \lyricmode {
 Can -- ta -- \skip4\skip4\skip4\skip4 va, Can -- ta -- \skip4\skip4\skip4\skip4 va_in ri -- va_al fiu -- me
 Tir -- \skip4\skip4\skip4\skip4 si d'E -- le -- \skip4 \skip4 o -- no -- \skip4\skip4\skip4\skip4 ra,
  E ri- spon- dean le sel -- ve_e l'on -- \skip4\skip4\skip4 de_ho -- no -- \skip4\skip4\skip4\skip4\skip4\skip4 ra,
  E pa- rea mor- mo- ran -- do, mor- mo- ran- do, mor- \skip4\skip4 mo- ran- do Dir l'o -- ra,
  ho -- ra ch'ap -- pa -- re l'Au- ro -- ra par,
  che lie- ta_es- ca dal ma -- re,
  Hor chi l'ho- no- ra_a- man -- \skip4 do?
  E l'ac -- que_in- sie -- \skip4\skip4 me,
  E l'ac- que_in- sie- me,
  ei ra -- \skip4\skip4\skip4 mi,
  Hor chi fia, che l'ho -- no -- ri,
  e che non l'a -- \skip4\skip4 mi?
  Hor chi fia, che l'ho -- no -- ri,
  e che non l'a -- \skip4\skip4\skip4\skip4 mi? e che __ \skip4\skip4 non l'a -- mi?
  
}

agostini_cantava_incipit_tenore = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
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

agostini_cantava_tenore = \relative c'{
  \clef "treble_8"
  \autoBeamOff
  \key f\major
  \time 4/2
  \numericTimeSignature
  r1 r2 g2 g4 a bes c d2. g4 f e d c bes2 a a bes c1 bes2 d d d 
  g,2. a4 bes c d e \mens f\breve \endmens f1 r f2 e4 f g g, d'2 c r4 c bes a bes c d e f2. \small f4 f \normalsize d8 [e] 
  f2. e4 d2 d \[ d1 g,\] a2 a2. d4 d bes4~bes a4 bes2 bes f'4. e8 d4. c8 bes4. c8 d4. e8 
  f2 f2. es4 d1 d2 g2. g4 d2 bes a g2. \ficta es'4~es8 d8 c2 b!4 c c c8 \ficta b! c d e2 f 
  r4 c d8 c d e f2 e a, a4 e' f d d2 d4 g f f f8 [e f g] a4 g8[ f] 
  g2 g4 \small e \normalsize c c c2 c4 c c g' g2 g4 d e8 [\ficta fis g e fis! g a fis!8]  g8 [d] g2 fis!4 g2 
  r2 r1 d1~d2 d2 e1 fis!2 g es4. d8 c2 d r4 d e2 f d1. cis!2 r d1 d2 e1 fis!2 g 
  es4. d8 c2 d r4 d e2 f d1 e2 d d es \mens d\breve d\longa \endmens
}

agostini_cantava_lyrics_tenore = \lyricmode {
  Can -- ta -- \skip4\skip4\skip4\skip4 va_in ri -- \skip4\skip4\skip4\skip4 va_al fiu -- me Tir -- si d'E -- le -- o -- no -- \skip4\skip4\skip4\skip4\skip4\skip4 ra,
  E ri- spon- dean le sel -- ve e l'on -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 de_ho -- no -- \skip4 ra,
  E pa- rea mor- mo- ran -- do,
  mor- mo- rand- do, mor- mo- rand- do,  
  Dir l'o -- \skip4\skip4 ra,
  ho -- ra ch'ap -- pa -- re l'Au -- ro -- \skip4\skip4 ra par,
  che lie- ta_es- ca dal ma -- re,
  che lie- ta_es- ca dal ma -- re.
  Hor chi l'ho- no- ra_a- man- do?
  E l'ac- que_in-  sie -- \skip4\skip4 me,
  E l'ac- que_in- sie- me, E l'ac- que_in- sie- me ei ra -- \skip4 \skip4 \skip4 mi
  Hor chi fia che l'ho -- no -- \skip4 \skip4 ri,
  e che non l'a -- mi?
  Hor chi fia che l'ho -- no -- \skip4 \skip4 ri,
  e che non l'a -- mi? e che non l'a -- mi?
  
}

agostini_cantava_incipit_basso = \markup { \score {
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

agostini_cantava_basso = \relative c{
  \clef bass
  \time 4/2
  \numericTimeSignature
 \key f \major
 \autoBeamOff
 %baritone clef original
 r\breve r2 g' g4 a bes c d c bes a g2 d d g f1 bes,2 bes'4 a g f 
 g4 f es d c2 g'1 f f2 bes, f'4 e f g a2 g r\breve r2 c, g'4 f g a bes c 
 d2. d4 d bes8 [c] d2 d, g1 d r r d2. g4 f2 bes, bes4 bes2 bes4 bes2. bes4 bes1 bes2 c 
 d1 g r2 g2~g4 g4 d2 es4. d8 c2 b!4 c g' g c,2 r c f8 e f g a2 g  
 r2 c, f4 d a'4. g8 f4 g d2 g4. a8 bes[ a bes c]  d4 d c2 c4 c, \small c4. \normalsize d16 [e] 
 f8 [e f g a g a bes] c2 c, g' g r1 r\breve r1 g1~g2 d2 a'1 d,2 g c,1 g'2 r4 g \small c2 \normalsize a bes1 a 
 r2 g1 d2 a'1 d,2 g c,1 g'2 r4 g c2 a bes1 a2 d, g c, \[ g'1 d\] \mens g\longa \endmens  \bar"||"
}

agostini_cantava_lyrics_basso = \lyricmode {
 Can -- ta -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 va_in ri -- va_al fiu -- me Tir -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 si d'E -- le -- o -- no -- \skip4\skip4\skip4\skip4 ra,
  e l'on -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 de_ho -- no -- ra,
  E pa- rea mor- mo- ran- do, mor- mo- ran- do,
  Dir l'o -- ra,
  ho -- ra ch'ap -- pa -- \skip4\skip4 re l'Au- ro- ra par,
  che lie- ta_es- ca dal ma -- re,
  Hor chi l'ho- no -- \skip4\skip4 ra_a- man -- do?
  E l'ac -- \skip4 que_in- sie- me,
  E l'ac -- \skip4\skip4\skip4 que_in- sie- me,
  
  Hor chi fia che l'ho -- no -- ri,
  e che non l'a -- mi?
  Hor chi fia che l'ho -- no -- ri,
  e che non l'a -- mi? e che non l'a -- \skip4 mi?
}

continuo = \relative c{
  \clef bass
  
}


