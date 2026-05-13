global = {
  \key f \major
  \time 4/2
  \autoBeamOff
  
}

spontone_forse_incipit_canto_primo = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Canto" }
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


spontone_forse_canto_primo = \transpose c d{
\relative c'' {
  \clef "treble" \key es \major \numericTimeSignature\time 4/2   % 2  
  %\key es \major 
  r2 c1 bes4 as4  % 3
  g2 f2 g1   % 4
  f2 f'2 es4 d4 c2  % 5
  b4 c2 b4 c1  % 6
  r2 c2 as2. bes4   % 7
  c4 bes4 as2. g8 [ f8 ] g2  % 8
  as2 es2 r1  % 9
  r2 c'2 as4. bes8 c4. bes16 [ as16 ]   
  g4 as4 g2 r1  % 11
  r2 d'2 es4. d8 c8 [ bes8 as8 g8 ]  % 12
  f4 f'2 e4 f1   % 13
  R1*2  % 14
  r1 r2 es2 ~  % 15
  es2 es4 es4 es2 es2   % 16
  d1 d2 e2  % 17
  f2 c2 des4 c4 bes4 a4  % 18
  bes2 c4 a4 bes4 c4 des2   % 19
  c2 es1 es2  
  es2 c4 c4 f,2 as2  % 21
  c4. d8 es2 c4 c4. d8 es4 ~   % 22
  es4 d8 [ c8 ] b4 c4 d4 es4 d2  % 23
  e1 r2 r4 c4 ~  % 24
  c4 bes2 as2 g4 g2   % 25
  r4 f4 f2 g1  % 26
  r4 b2 c4. b8 b4 c4 bes4  % 27
  as4. g8 f2 g2 r4 c4   % 28
  c4 c4 d2 es2 r2  % 29
  r2 es2 es4 es4 c2 ~  
  c4 c4 bes2 as4 es'2 es4 ~   % 31
  es4 c4 bes4 es4 \ficta des8 [ c8 ] c2 bes4  % 32
  c2 r4 as4 as4 as4 bes2  % 33
  c2 r4 f4 f4 f4 es4. d8   % 34
  c8 [ bes8 as8 g8 ] f8 [ g8 ] as2 g8 [ f8 ] g2  % 35
  as2 es'2 es2. es4  % 36
  c4 c4 bes2 as2 r4 bes4   % 37
  as4 f4 g2 g1  % 38
  r4 es'4 es4 es4 c1  % 39
  c2 r4 as4 as4 f4 c'2   
  f,2 r4 f4 g4 g4 c2  % 41
  \mens c\breve \endmens \bar "||"
  }
} 

spontone_forse_lyrics_canto_primo = \lyricmode {
  For -- "se è" ca -- gion
  "l'au" -- ro -- "ra," For -- "se è" ca -- gion "l'au" -- ro --
  \skip4 ra Di que -- sto bel con -- cen -- \skip4 \skip4 \skip4\skip4 to  
  e_i ra -- \skip4 \skip4 \skip4 \skip4 \skip4\skip4 mi e'l ven -- \skip4
  \skip4 \skip4 \skip4 \skip4\skip4\skip4\skip4 to "O " __ con si dol -- ce mo -- do Il
  ciel Tar -- qui -- nia ho -- no -- \skip4 "ra," Tar- qui- nia_ho- 
  no- ra E per lei de la ter -- ra "s'in" -- na -- mo --
  "ra," "s'in" -- na -- mo -- \skip4 \skip4 \skip4 \skip4 \skip4
  \skip4\skip4 ra I' __ o -- \skip4 \skip4 do "ò" par mi i o -- \skip4
  \skip4 do la vo -- \skip4 \skip4 ce el -- "la è" "púr" des -- sa Ec
  -- co Tar -- qui -- nia vie -- "ne," Ec -- "co " __ Tar -- qui --
  nia vie -- \skip4 \skip4\skip4 ne, el -- "la è" "púr" des -- "sa," el --
  "la è" "púr" des -- \skip4 \skip4 \skip4 \skip4 \skip4 \skip4\skip4 \skip4\skip4\skip4\skip4 sa Ec
  -- co Tar -- qui -- nia vie -- "ne," Tar -- qui -- nia vie -- ne A
  -- mor s'ap- pres -- "sa," A -- mor "s'ap" -- pres -- "sa," A --
  mor "s'ap" -- pres -- "sa."
  
}

spontone_forse_incipit_canto_secondo = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Quinto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-g"
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

spontone_forse_canto_secondo = \transpose c d{
\relative c'' {
  \clef "treble" \key es \major \numericTimeSignature\time 4/2   % 2
  %\key es \major 
  R1*2 % 3
  r1 r2 c2 ~   % 4
  c2 bes4 as4 g4. f8 es4. f8  % 5
  g1 g2 c2  % 6
  as2. bes4 c4 es4 f2   % 7
  es4 es4 es4. es8 es4 bes4 es2  % 8
  c1 r1  % 9
  r2 es2 c4. d8 es4. d16 [ c16 ]   
  bes4 c4 bes2 r1  % 11
  r2 r4 g2 es'4. d8 [ c8 bes8 ]  % 12
  as8 [ g8 as8 bes8 ] c2 c2 as2 ~   % 13
  as2 as4 as4 as2 as2  % 14
  g1 g2 c2 ~  % 15
  c2 c4 c4 bes2 c2   % 16
  a1 b2 r4 c4 ~  % 17
  c4 f2 e4 f4 f4 f2  % 18
  f2 r4 c4 des4 c4 bes2   % 19
  a2 bes1 bes2  
  c2 r4 c2 c4 f,2  % 21
  as2 c4. d8 es2 c2   % 22
  bes4 es4 d4 c4 b4 c2 b4  % 23
  c2 r4 c2 bes2 as4  % 24
  g4 g4 f2. \ficta e4 e2   % 25
  r1 r2 d'2  % 26
  d2 d4 es4 d4. c16 [ d16 ] es4 d4 ~  % 27
  d8 [ c8 ] c2 b4 c1   % 28
  r4 f4 f4 f4 es4. d8 c8 [ bes8 as8 g8 ]  % 29
  f8 [ g8 ] as2 g4 as2 es'2  
  es2. es4 c4 c4 bes2   % 31
  as2 r2 f'2 f4 f4  % 32
  es4. d8 [ c8 bes8 ] c4. bes8 as2 g4  % 33
  as4 c4 c4 c4 d2 es2   % 34
  r1 r2 es2  % 35
  es4 es4 c2. c4 bes2  % 36
  as4 es'2 es2 c4 bes4 es4   % 37
  d8 [ c8 ] c2 b4 c2 r4 c4  % 38
  bes2 c2 as2 g2  % 39
  r4 as4 as4 f4 c'2 f,2   
  r4 f4 f8 [ g8 as8 bes8 ] c4 c4 g2  % 41
  \mens a\breve \endmens \bar "||"
}
}

spontone_forse_lyrics_canto_secondo = \lyricmode {
  For -- "se è" ca -- gion
  "l'au" -- ro -- \skip4 \skip4 ra Di que -- sto bel con -- cen --
  "to," Di que -- sto bel con -- cen -- to "e i" ra -- \skip4 \skip4
  \skip4 \skip4 \skip4\skip4 mi e'l ven -- \skip4 \skip4 \skip4\skip4\skip4\skip4\skip4\skip4 to "O " __
  con si dol -- ce mo -- "do," "O " __ con si dol -- ce mo -- do "Il "
  __ ciel Tar- qui- nia_ho- no- ra, Tar -- qui -- "nia ho"
  -- no -- ra E per lei de la ter -- ra "s'in" -- na -- mo -- "ra,"
  "s'in" -- na -- mo -- \skip4 \skip4 \skip4 \skip4 ra I o -- \skip4
  "do," I o -- \skip4 do i o -- do la vo -- \skip4 \skip4 \skip4
  \skip4 \skip4\skip4\skip4 ce el -- "la è" "púr" des -- \skip4 \skip4 \skip4
  \skip4 \skip4\skip4\skip4\skip4\skip4 sa Ec -- co Tar- qui- nia vie -- "ne," el -- "la
    è" "púr" des -- \skip4 \skip4 \skip4 \skip4 \skip4\skip4\skip4 sa, el -- "la
    è" "púr" des -- sa Ec -- co Tar -- qui -- nia vie -- "ne," Ec -- co
  Tar -- qui -- nia vie -- \skip4 \skip4\skip4 ne A -- mor "s'ap" -- pres --
  "sa," A -- mor "s'ap" -- pres -- "sa," A- mor  \skip4\skip4\skip4\skip4 "s'ap" --
  pres -- "sa." 
}

spontone_forse_incipit_alto = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c2"
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

spontone_forse_alto = \transpose c d{
\relative as' {
  %\clef "mezzosoprano"
  \clef "treble" 
  \key es \major 
  \numericTimeSignature\time 4/2
   % 2
  %\key es \major 
  r2 as1 g4 f4  % 3
  e4 e4 f1 e2   % 4
  f1 r1  % 5
  r2 g2 es2. es4  % 6
  f4 f4 f2 es4 as4 f4. g8   % 7
  as4 g8 [ f8 ] es2. es4 es2  % 8
  es4 es2 c4. d8 es4. d16 [ c16 ] d4  % 9
  c2 r2 es2 c4. d8   
  es2 es2 r4 es4 as2  % 11
  g1 r4 g4 as4 es4  % 12
  r4 f4 g2 as2 f2 ~   % 13
  f2 f4 f4 es2 f2  % 14
  d1 es1  % 15
  as2 g4 g4 g2 as4 g4 ~   % 16
  g4 fis8 [ e8 ] fis2 g2 g2  % 17
  as2. g4 bes4 f4 f4. es8  % 18
  des2 c4 f4 f4 f4 f2   % 19
  f2 g1 g2  
  as1 as2. f4  % 21
  es1 es2 as4 as4   % 22
  g2 g4 g2 g4 g2  % 23
  g1 r2 f2  % 24
  es2 des2 c1   % 25
  r2 c2 es2 d2  % 26
  r2 g2 g2 c,4 g'4  % 27
  f4. es8 d2 c2 r4 es4   % 28
  f2. bes4 g2 as4 f4  % 29
  c4. d8 es2 es2 r4 es4 ~  
  es4 as2 g4 es4. f8 g2   % 31
  es2 r2 r4 f4 f4 f4  % 32
  g2 as2 r1  % 33
  es2 f2. bes4 g2   % 34
  as4 f4 c4. d8 es1  % 35
  es2 r4 es2 as2 g4  % 36
  es4. f8 g2 es2 r4 g4   % 37
  f4 c4 d2 c2 r4 g'4  % 38
  g2 es2. f2 e4  % 39
  f1 r4 as2 f4 ~   
  f8 [ es8 ] des4 c4 f2 e8 [ d8 ] e2  % 41
  \mens f\breve \endmens \bar "||"
}
}

spontone_forse_lyrics_alto = \lyricmode {
  For -- "se è" ca -- gion
  "l'au" -- ro -- \skip4 ra Di que -- sto bel con- cen- to, 
  Di ques- to bel\skip4\skip4\skip4 con- cen- to, Che fan le fron- \skip4\skip4\skip4 de
  e_i ra- \skip4\skip4 mi e l'ac- que
  "e'l" ven- to "e'l" ven -- to "O " __ con si dol -- ce mo -- "do,"
  O con si dol -- ce mo -- \skip4 \skip4\skip4 do Il ciel Tar -- qui -- nia_ho- no- \skip4\skip4 ra,
  Tar- qui- nia_ho- no- ra E per
  lei de la ter -- ra "s'in" -- na -- mo -- "ra," "s'in" -- na -- mo
  -- "ra," I o -- \skip4 do "ò" par mi i o -- do la vo -- \skip4
  \skip4 ce el -- "la è" "púr" des -- "sa," el -- "la è" "púr" des --
  sa Ec -- co Tar -- qui -- nia vie -- "ne," el -- "la è" "púr" des --
  "sa," el -- "la è" "púr" des -- "sa," el -- "la è" "púr" des -- sa
  Ec -- co Tar -- qui -- nia vie -- "ne," Tar -- qui -- nia vie -- ne
  A -- mor "s'ap" -- pres -- \skip4 "sa," A -- "mor " __ __ \skip4 \skip4 "s'ap" --
  pres -- \skip4 \skip4\skip4 "sa."
  
}

spontone_forse_incipit_tenore = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
	\relative c'{
	\global
	\time 4/4
	\clef "petrucci-c3"
	\set Score.timing = ##f
	g1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

spontone_forse_tenore = \transpose c d{
\relative f {
  %\clef "alto"
  \clef "treble_8"
  \key es \major 
  \numericTimeSignature\time 4/2 % 2
   %\key es \major 
   f1 as2 bes2  % 3
  c2 des2 c1   % 4
  c2 r4 c4 c4 b4 c8 [ d8 es8 c8 ]  % 5
  d4 es4 d2 c2 r4 c4  % 6
  c4 des4 c2 r4 c4 as2 ~   % 7
  as4 bes4 c4 c4 bes1  % 8
  as2 c2 as4 bes4 c4 bes8 [ as8 ]  % 9
  g4 as2 g4 as1   
  r2 bes2 c4. bes8 [ c8 d8 ] es4 ~  % 11
  es8 [ d8 ] c2 b4 c2 r4 c4  % 12
  des2 c2 f,2 des'2 ~   % 13
  des2 c4 c4 c2 des4 c4 ~  % 14
  c4 b8 [ a8 ] b2 c2 as2 ~  % 15
  as2 c4 c4 es2 c2   % 16
  d1 g,2 c2  % 17
  c1 r4 c4 des4 c4  % 18
  bes2 a4 c4 bes4 a4 bes2   % 19
  f2 r4 bes2 bes4 es2  
  c4 c4 f,2 as4 as2 des4  % 21
  c2 as4 c4. d8 es2 c4   % 22
  r4 g2 es'4 d4 c4 d2  % 23
  c1 r1  % 24
  r1 r2 g2   % 25
  as2 c1 b2  % 26
  R1*2  % 27
  r4 f'4 f4 f4 es4. d8 c8 [ bes8 as8 g8 ]   % 28
  f2 f'2 r2 r4 as,4  % 29
  as4 as4 bes2 c2 as2 ~  
  as2 es'2 as,2 bes4 bes4   % 31
  c4 as2 g4 as2 f2  % 32
  r2 f'2 f4 f4 es4. d8  % 33
  c8 [ bes8 as8 g8 ] f2 f'2 r2   % 34
  r4 as,4 as4 as4 bes1  % 35
  c2 as1 es'2  % 36
  as,2 bes4 bes4 c4 as2 g4   % 37
  as2 r2 r2 es'2  % 38
  es4 es4 c2 c2 r4 c4  % 39
  as4 f4 c'2 f,2 r4 as4 ~   
  as4 bes2 as4 g1  % 41
  \mens f\breve \endmens \bar "||"
}
}

spontone_forse_lyrics_tenore = \lyricmode {
 For -- "se è" ca -- gion
  "l'au" -- ro -- "ra," For- se_è ca -- gion \skip4\skip4\skip4\skip4 "l'au" -- ro
  -- ra Di que -- sto "bel," Di que -- sto bel con -- cen -- "to," Che
  fan le fron -- \skip4 \skip4 \skip4 \skip4\skip4 de e "l'ac" -- \skip4
  \skip4 \skip4 \skip4\skip4\skip4\skip4 que "e'l" ven -- \skip4 to "O " __ con si dol
  -- ce mo -- \skip4 \skip4\skip4 do, "O " __ con si dol -- ce mo -- do Il
  ciel Tar -- qui -- nia_ho- no- ra, ho -- no -- \skip4\skip4 ra E per
  lei de la ter -- "ra," de la ter -- ra "s'in" -- na -- mo -- "ra,"
  "s'in" -- na -- mo -- \skip4 \skip4 "ra," "ò" "par " __ __ \skip4 mi el --
  "la è" "púr" des -- \skip4\skip4\skip4\skip4 \skip4 \skip4 "sa," el -- "la è" "púr"
  des -- sa Ec -- co Tar -- qui -- nia vie -- \skip4 \skip4 \skip4
  "ne," el -- "la è" "púr" des -- \skip4 \skip4\skip4\skip4\skip4 \skip4 "sa," el -- "la
    è" "púr" des -- sa Ec -- co Tar -- qui -- nia vie -- \skip4 \skip4
  ne A -- mor s'ap- pres -- "sa," A -- mor "s'ap" -- pres -- "sa,"
  A -- mor "s'ap" -- pres -- "sa."  
}

spontone_forse_incipit_basso = \markup { \score {
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

spontone_forse_basso = \transpose c d{
\relative c {
  \clef "bass" 
  %\clef "varbaritone" 
  \key es \major 
  \numericTimeSignature\time 4/2
   % 2
  
  %\key es \major 
  R1*2  % 3
  r1 c1   % 4
  f2. f4 g2 as2  % 5
  g1 c,2 as'2  % 6
  f2. g4 as2 des,2   % 7
  as1 es'1  % 8
  as,2 as'2 f4 g4 as4 g8 [ f8 ]  % 9
  e4 f4 c2 r1   
  r2 es2 as4. g8 f8 [ es16 d16 c8 d8 ]  % 11
  es4. f8 g2 c,2 r2  % 12
  r1 r2 des2 ~   % 13
  des2 f4 f4 as2 f2  % 14
  g1 c,2 r2  % 15
  R1*2   % 16
  r1 r2 c2  % 17
  f2. c'4 bes4 a4 bes4 f4  % 18
  bes,2 f'2 r1   % 19
  r2 es1 es2  
  as2. f2 f4 des2  % 21
  as2 as4 as4 as2 as2   % 22
  es'4. f8 g4 c,4 g'1  % 23
  c,1 r1  % 24
  r1 r2 c2   % 25
  f2 as2 g1  % 26
  R1*2  % 27
  r1 r2 as2   % 28
  as4 as4 bes2 c2 f,2  % 29
  f4 f4 es2 as,1  
  r1 r2 es'2   % 31
  as2 es2 f4. es8 \ficta des2  % 32
  c2 r2 r1  % 33
  as'2 as4 as4 bes2 c2   % 34
  f,2 f4 f4 es1  % 35
  as,1 r1  % 36
  r2 es'2 as2 es2   % 37
  f4 as4 g2 c,1  % 38
  r2 as'2 as4 f4 c'2  % 39
  f,1 r2 f2   
  des4 bes4 f'2 c1  % 41
  \mens f\breve \endmens \bar "||"
}
}

spontone_forse_lyrics_basso = \lyricmode {
  For -- "se è" ca -- gion
  "l'au" -- ro -- ra Di que -- sto bel con -- cen -- \skip4 "to," Che
  fan le fron -- \skip4 \skip4 \skip4\skip4 de e l'ac -- \skip4\skip4\skip4\skip4\skip4 \skip4
  \skip4 \skip4 \skip4 que "O " __ con si dol -- ce mo -- do Il ciel
  Tar -- qui -- nia ho -- no -- \skip4 ra E per lei de la ter -- "ra,"
  de la ter -- ra "s'in" -- \skip4 \skip4 na -- mo -- "ra," "ò" "par "
  __ __ \skip4 mi el -- "la è" "púr" des -- "sa," el -- "la è" "púr" des --
  sa Ec -- co Tar -- qui -- nia vie -- "ne," el -- "la è" "púr" des --
  "sa," el -- "la è" "púr" des -- sa Ec -- co Tar -- qui -- nia vie --
  ne A -- mor s'ap- pres -- "sa," A -- mor "s'ap" -- pres --
  \skip4 "sa."
  
}




