ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }

\language "english"


global = {
 \key c \major
 \time 2/1
  \autoBeamOff
}

santinelli_o_phebo_incipit_cantus = \markup { \score {
	{
	  \new MensuralVoice<<
	\set Staff.instrumentName = \markup { "Canto" }
	\key c \major

	\clef "petrucci-c1"
	% \omit Score.BarLine
	 \set Score.timing = ##f
	%\override Staff.NoteHead.style = #'neomensural
	\time 2/2
	r1
	
	  >>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
      
  }

                                        }  \hspace #1 }
	


santinelli_o_phebo_cantus = \relative c'{
 \global
  \clef treble
  %VI[naturalis,aeolian]
  r1 e'1 e2 e c1 a c4 d c b c2 c b1 a2 r r1
  r\breve r2 b e4. d8 c4 b8[a] g1 r2 e g4. \ficta fs8 g4 a b c b2 a1. \ficta gs2 a\breve \bar"||"
  %XVI[naturalis,aeolian]
  r\breve r r1 a2 b4 c d1 b g e \ficta fs r
  %XVIII[mollis,phrigian]
  b1 c bf! a c a2 a a1. \ficta gs2 a1 a~a2 g2 a1. \ficta gs2 a1 \bar"||"
  %V[durum, mixolydian]
  a1 a2 fs!~fs g f!1 e2 d1 r2 r\breve r g1 a2 a
  bf!1 a4 g f e d e f g \ficta fs1 \bar"||" \break
  %XVII[durum, lydian]
  r2 g b2. a4 g8[\ficta fs e \ficta fs] g2 e2. \ficta fs4 fs!2. g4 g1 
  f! g2 a4 b c2. a4 b1 r2 g e1 f d e4 d e f g2. f4 e\breve \bar"||"
  %X[durum, lydian]
  r\breve r1 g a2 a a a g2. a8[g] \ficta fs1 r2 b d d d1. \ficta cs2 d1
  d2 c4 b a\breve g\breve \bar"||" \break
  %IV[durum, aeolian]
  r1 b2 a4 g fs!1 \ficta gs2 a4 b c1 a4 b c d e1 e f2. e4 d2 d c b b1 \bar"||"
  %II[naturalis, aeolian]
  b1 c d d2 d d4. c8 b4. c8 d4. e8 fs!4. e8 d4. c8 b4. a8
  g4. fs!8 e2 a \ficta gs2 a1 \ficta gs\breve \bar"||"
  
  
 
}

santinelli_o_phebo_lyrics_cantus = \lyricmode { 
O Phe -- bo,~o So -- le, u -- \skip4 ni -- ver -- sal Na -- tu -- ra,
u -- ni -- \skip4 \skip4 ver -- sal Na -- tu -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 ra
al __ \skip4\skip4 mon -- do~u -- sci -- \skip4 to
De la Ter -- \skip4 ra, e del Cie -- \skip4 lo 
mo -- to,~e mi -- su -- ra
De la lu -- ce vi -- \skip4 tal 
Fon -- te~in -- fi -- ni -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 ta
Tu dei __ \skip4 quat -- tro e -- \skip4 le -- \skip4 men -- ti, 
e -- le -- \skip4 men -- \skip4 ti 
Es -- sen -- za pu -- \skip4\skip4\skip4\skip4\skip4\skip4 ra
Di que -- sta pu -- ri -- tà, __ \skip4\skip4
di que -- sta pu -- ri -- tà
Sem -- pli -- ce Vi -- ta
Tu flu -- i -- d'Or,
tu flu -- i -- d'Or,
tu __ \skip4 flu -- i -- d'Or,
Tu l'hu -- mi -- do The -- sau -- \skip4 ro
Ch'al tuo Lu -- me cen -- tral s'in -- du -- ra~in Au -- \skip4
\skip4\skip4 \skip4 \skip4 \skip4 \skip4 \skip4 \skip4 ro, 
in __ \skip4 Au -- ro.
}

santinelli_o_phebo_incipit_altus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\key c \major
	\clef "petrucci-c3"
	\set Score.timing = ##f
	%\override Staff.NoteHead.style = #'petrucci
	%\override Rest.style = #'mensural
	%\override TimeSignature.style = #'neomensural
	\time 2/2
	e1
	}
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
       
  }

} \hspace #1 }

santinelli_o_phebo_altus = \relative c'{
  \global
  %\clef "treble_8"
  \clef treble
  e1 e2 e c2. d4 e1 c4 d e f e2 e a1~a4 \ficta gs8[ \ficta fs] \ficta gs!2 a2 
  a2 e e d2. e4 f1 e\breve e1 e2 e e1 e e\breve \ficta cs \bar"||"
  
  r\breve r1 d2. d4 d2 d4 d c1 b e e c b e2. \ficta fs4 \bar"||"
  
  g1 a f f e4 c d8[e f g] f1 f2 f e1 e f~f2 e d a8[b c d] e1 e \bar"||"
  
  d1 \ficta cs2 d2~d e d1 \ficta cs2 d1 r2 r\breve r 
  d1. \ficta cs2 d2 d d1 d\breve \bar"||"
  
  r2 e fs!2. e4 d8[c b c] d2 c2. d4 d2. e4 e1 c e2 f4 g a2. e4 fs!1
  r2 d c1 a bf! c1~c4 \ficta b8[a] \ficta b2 c\breve \bar"||"
  
  r\breve r1 e fs!2 fs fs fs e2. fs8[e] d1 
  r2 d fs!1 a g2 g fs!1 fs2 g1 \ficta fs4 e \ficta fs!1 g\breve \bar"||"
  
  r1 g2 fs!4 e ds!1 e a4 b a g f1 a a a2. a4 bf!2 bf a g g1 \bar "||"
  
  gs!1 a b a r fs!2 fs b4 b fs!2 d2 b e1 e e\breve \bar"||"
  
  
  
  
  
  

}

santinelli_o_phebo_lyrics_altus = \lyricmode { 
O Phe -- bo,~o So -- \skip4 le, u -- \skip4 ni -- ver -- sal Na -- tu -- \skip4\skip4 ra,
o Phe -- bo~o So -- \skip4\skip4 le u -- ni -- ver -- sal Na -- tu -- ra
Dal ca -- o -- ti -- co Mon -- do~al mon -- do~u -- sci -- to
De __ \skip4 \skip4 la Ter -- ra, e del Cie -- lo, 
e del Cie -- lo mo -- to, e mi -- su -- ra
De la lu -- ce vi -- \skip4 tal 
Fon -- \skip4 te~in -- fi -- ni -- ta
Tu dei __ \skip4 quat -- tro e -- \skip4 le -- \skip4 men -- ti,
e -- le -- \skip4 men -- \skip4 ti
Es -- sen -- za pu -- \skip4\skip4\skip4 ra
Di que -- sta pu -- ri -- tà __ \skip4\skip4
di que -- sta pu -- ri tà 
Sem -- pli -- ce __ \skip4 Vi -- ta
Tu flu -- i -- d'Or,
tu flui -- \skip4\skip4\skip4\skip4 -- d'Or
Tu l'hu -- mi -- do The -- sau -- \skip4 ro
Ch'al tuo Lu -- me cen -- tral s'in -- du -- ra~in Au -- ro,
in Au -- ro.

}

santinelli_o_phebo_incipit_tenor = \markup { 
  \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
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

santinelli_o_phebo_tenor = \relative c'{
  \global
  \clef "treble_8"
  r\longa r\breve r1 e1 e2 e c1 
  a\breve g1 r2 b2 e4. d8 c4 b8[a] g1 
  r2 e2 g4. a8 g4 e b' c b2 b b a\breve \bar"||"
  
  r1 a2. a4 a2 a4 a g1 g2 g4 g g \ficta fs8[e] \ficta fs!2 g1 g c2. a4 a1 b1 r \bar"||"
  
  e1 e d c c4 a b8[c d e] d1 d2 d b1 a2 e'4 d2 c4 b a b1 a2 a b1 \ficta cs \bar"||"
  
  r\breve r r2 a1 a2 fs!1 g2 f!2~f e2 d1 
  d e2 e g1 a bf!1. a2 \bar"||"
  
  r2 c d2. c4 b8[a g a] b2 g1 b b a c e d
  r\breve r2 c f,1 a g g a \bar"||"
  
  b2 b b b a2. b8[a] g1 r\breve r
  r2 g a1 a a2 a a1 b2 d e1 d d\breve \bar"||"
  
  c1 b b b e d \ficta cs \ficta cs d2. e4 f2 f e d d1 \bar"||"
  
  e1 a, g fs!2 fs fs'4. e8 d4. c8 b4. c8 d4. e8 fs!4. e8 d4. c8
  b4. a8 g2 a b c1 b\breve \bar"||"
  
  
  
  
  
  
  
  
}

santinelli_o_phebo_lyrics_tenor = \lyricmode { 
O Phe -- bo,~o So -- \skip4 le, u -- ni -- \skip4 \skip4 ver -- sal 
Na -- tu --\skip4\skip4\skip4\skip4\skip4 ra, na -- tu -- ra
Dal ca -- o -- ti -- co Mon -- do~al mon -- do~u -- sci -- \skip4\skip4 to,
al Mon -- do~u -- sci -- to
De la Ter -- ra, e del Cie -- lo,
e del Cie -- lo mo -- \skip4\skip4\skip4\skip4 to, e mi -- su -- ra
De la lu -- ce vi -- \skip4 tal 
Fon -- te~in -- fi -- ni -- \skip4\skip4 ta
Tu dei __ \skip4 quat -- tro, quat -- tro e -- le -- men -- \skip4 ti 
Es -- sen -- za pu -- ra
Di que -- sta pu -- ri -- tà,__ \skip4\skip4
di que -- sta pu -- ri -- tà
Sem -- pli -- ce Vi -- ta
Tu __ \skip4 flui -- d'Or,
tu flui -- d'Or
Tu l'hu -- mi -- do The -- sau -- \skip4 ro
Ch'al tuo Lu -- me cen -- tral s'in -- du -- ra~in 
Au -- \skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 ro,
in __ \skip4 Au -- ro.

}

santinelli_o_phebo_incipit_bassus = \markup { 
  \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
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


santinelli_o_phebo_bassus = \relative c{
  \global
  \clef bass
  r\longa r a'1 a2 a f1 d e\breve
  e1 e2 e e1 e e\breve a, \bar"||"
  
  d2. d4 d2 d4 d c1 b b2 b a1 g r r\breve r \bar"||"
  
  e'1 a bf! f2. g4 a1 d,4 c d8[c d e] f2 f e1 a, d e f e a, \bar"||"
  
  r\breve r r2 d1 \ficta cs2 d1 e2 d2~d \ficta cs2 d1 
  bf! a2 a g1 \ficta fs g d' \bar"||"
  
  c1 b\breve c1 b e f c\breve b1 
  b c f, bf! a d c\breve \bar"||"
  
  r\breve r1 e d2 d d d g1 d2 e4 fs! 
  g1 d fs! e d b2 g c1 d g\breve \bar"||"
  
  a2 g4 fs! e1 b'4 a g fs! e1 a2 a, d1 a a d2. c4 bf!2 bf c g g1 \bar"||"
  
  r\breve r1 d' b b2 b b4 b b2 b2 g r e a1 e\breve \bar"||"
  
  
  
  

  
  
  
}

santinelli_o_phebo_lyrics_bassus = \lyricmode { 
O Phe -- bo,~o So -- \skip4  le, u -- ni -- ver -- sal Na -- tu -- ra
Dal ca -- o -- ti -- co Mon -- do~al mon -- do~u -- sci -- to
De la Ter -- \skip4\skip4 ra, e del Cie -- lo, del Cie -- lo 
mo -- to,~e mi -- su -- ra
De la lu -- ce vi -- \skip4 tal 
Fon -- te~in -- fi -- ni -- \skip4\skip4 ta
Tu dei __ quat -- tro e -- le -- men -- ti 
Es -- sen -- za pu -- ra, pu -- ra
Di que -- sta pu -- ri -- tà, di __ \skip4\skip4 que -- sta pu -- ri -- tà
Sem -- pli -- ce Vi -- ta
Tu flu -- i -- d'Or,
tu __ \skip4 flu -- i -- d'Or,
tu __ \skip4 flui -- d'Or, 
Tu l'hu -- mi -- do The -- sau -- \skip4 ro
Ch'al tuo Lu -- me cen -- tral s'in -- du -- ra in Au -- ro.


}