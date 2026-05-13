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
 \key f \major
 \time 2/1
  \autoBeamOff
  \set Score.tempoHideNote = ##t
}

festa_venite_incipit_cantus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Cantus" }
	\relative c'{
	\global
	%usage double timesig
	 %\override Score.TimeSignature.stencil =
      %#(double-time-signature  "timesig.mensural44" "3" "")
	%\time 3/1
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

festa_venite_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
  r\longa r\breve  % 2
  d1 e2 d2  % 5
  g1 f1  % 6
  g2  bes1 a4 g4    % 7
  a1 r2 g2  ~   % 4
  g2 f4  e4  d2. e4  % 9
  f4  g4  a2  bes2 a2  ~  
  a4  g4   g1  \ficta fis2   % \breve\breve
  \mens g\breve \endmens  % \breve1
  r2 d2 e1  % \breve3
  f1 g1  % \breve2
  e2 f1 d2   % \breve5
  e1 c2 f2 ~  % \breve6
  f2 d2 g1  % \breve7
  e2 a2.  g8 [ f8 ] g2   % \breve4
  a1.  g4  f4   % \breve9
  e1  d2.  e4  
  f2  g2.  f4 e4  d4   % 1\breve
  c2. d4 e2  f2 ~   % 11
  f4 e4 d1  \ficta cis2   % 13
  d1 b'1 \rest  % 12
  a1 g1  % 15
  a2 bes1  a4  g4   % 8
  f2. g4 a2  bes2  ~  % 17
  bes4  a8 [g8]  a2  bes2  a4  g4    % 14
  f2. g4  a2 g2 ~  % 19
  g2 f2 e1  
  \mens d\breve \endmens  % 3\breve
  r2 d2 f2 g2  % 31
  a2.  g4 a4  bes4  c2 ~  % 33
  c4 bes4 a4  g4  f2. g4   % 32
  a2 bes2. a8 [ g8  ] a2 ~  % 35
  a2 d,1 es2  % 36
  d2 g2.  \ficta fis8 [ e8 ] \ficta fis2   % 37
  \mens g\breve \endmens \bar "||"
  \break
  \mens bes\breve \endmens  % 39
  bes1 bes1  
  a2 a2 bes2 a2   % 2\breve
  g1 f2 a2  ~  % 21
  a4  g4  g2. \ficta fis8 [ e8 ] \ficta fis2   % 23
  g1 bes1  % 22
  a1 g1  % 25
  f1 bes1  % 26
  a1 g1  % 27
  f2 a1  g4  f4     % 24
  e1 d1  % 29
  b'1 \rest f1  
  g1 bes1  % 5\breve
  a1 g2 f2 ~  % 51
  f2 bes1 a2  % 53
  bes2 a2.  bes4 g2    % 52
  f1 bes2  a2 ~  % 55
  a4  g4  g1 \ficta fis2   % 56
  g2 bes2 a2 g2  % 57
  c1 bes2 a2  ~  % 54
  a4  g4  g1 \ficta fis2   % 59
 \mens \stemDown g \longa \endmens \bar "||"
  
   
}

festa_venite_lyrics_cantus = \lyricmode { 
  Ve -- ni -- "te a" -- man --
  "ti in" -- "sie" --\skip4\skip4\skip4 me a __ \skip4\skip4\skip4\skip4\skip4\skip4\skip4 "pian-" ger __\skip4 "for" --\skip4 "te,"
  "So" -- pr'al mio cor -- po "mor-" to "stes'" in ter -- "ra," Et
  ve -- "dre" --\skip4\skip4 te __\skip4\skip4\skip4 la __\skip4\skip4 mia __\skip4\skip4\skip4\skip4\skip4\skip4 cru -- del "sor" --\skip4 "te," 
  E "quant'" "è" tri -- \skip4\skip4\skip4\skip4\skip4 "st'el" __\skip4\skip4 fin __\skip4\skip4\skip4\skip4 "del-" la mia guer -- "ra,"
  Per "trop-" p'a -- "mar," __\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4
  io __\skip4 son con -- "dot-" t'a "mor" --\skip4\skip4 "te."
  Tris- to co -- lui "ch'a-" mor cru -- "de-" "le af" -- fer -- 
  \skip4\skip4\skip4\skip4 "ra," "Ques-" "t'è" del ser -- vir suo so -- la "mer" --\skip4\skip4 ce -- "de," Et
  mor -- tal co -- "s'a" -- mar con trop -- pa fe -- \skip4\skip4 "de," fe --\skip4\skip4\skip4\skip4 de, 
  a -- mar con trop -- pa fe --\skip4\skip4\skip4 de.
  
}





festa_venite_incipit_tenor = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenor" }
	\relative c'{
	\global
	\time 2/2
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

festa_venite_tenor = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
  r\breve  % 1
  r1 d,1  % 3
  e2 d2 g1  % 2
  f1 g2  bes2 ~  % 5
  bes2 a4  g4   a1  % 6
  r2 g1  f4  e4    % 7
  d2.  e4 f2  g2   % 4
  bes1.  a4  g4   % 9
  a1  g2 c2  
  bes2 g2 a1  % \breve\breve
  g1 r2 g2  % \breve1
  bes1 c1  % \breve3
  d1 bes2 c2 ~  % \breve2
  c2 a2 bes1   % \breve5
  g2 a1 f2  % 8
  bes1 g2 c2  ~  % \breve7
  c2 a2 bes1  % \breve4
  a2. bes4 c2 d2 ~  % \breve9
  d2 \ficta cis2  d2 g,2  
  a2 bes2 c2.  bes4  % 1\breve
  a4  g4   f2  g2 a2   % 11
  d,2 f2 e1   % 13
  d2.  e4 f4  g4  a2  % 12
  a4 bes4  c2 bes2 a4  g4   % 15
  f2 g2 bes1  % 16
  a2 d1 bes2  % 17
  c2.  bes8  [a8]   g2.  a4   % 14
  bes4  c4  d4  e4  f2  e2  ~  % 19
  e4  d4   d1  \ficta cis2   
  d2 d2 r2 d,2  ~  % 3\breve
  d4  e4 f4 g4  a2  bes2  % 31
  a2 c2.  bes4 a4  g4   % 33
  f2. g4 a2  bes2   % 32
  c2 d2 bes2 c2  % 35
  d2.  c4 bes4  a4  g2  % 36
  bes2 c2 a1   % 37
  \mens g\breve \endmens  \bar"||"
  
  \mens d'  ~ \endmens  % 39
  d1 e1  
  f1 d1   % 2\breve
  bes2. c4 d2 c2 ~  % 21
  c2 bes2 a1  % 23
  g\breve  % 22
  b1 \rest bes1  % 25
  a1 g1  % 26
  f1 bes1  % 27
  a2. bes4 c2 d2 ~   % 24
  d2 \ficta cis2 d1  % 29
  g,1 a1  
  bes1 g2 d'2  % 5\breve
  d2 c2 es2 d2  % 51
  bes1 c2 c2  % 53
  bes2 c2 d2 bes2   % 52
  a1 g2 c2 ~  % 55
  c2 bes2 a1  % 56
  g2 g2 d'2 e2  % 57
  f2. e4 d2 c2  % 54
  d2 bes2 a1  % 59
  \mens g \longa \endmens \bar "||"
 
}

festa_venite_lyrics_tenor = \lyricmode { 
Ve -- ni -- "te a" -- man --
  "ti in" -- "sie" --\skip4\skip4\skip4 me a __ __\skip4\skip4 pian --\skip4\skip4 ger "for" --\skip4\skip4\skip4 "te,"
  a pian- ger for- te,
  "So" -- pr'al mio cor
  -- po mor -- to "ste-" s'in "ter-" "ra," Et ve -- "dre" --\skip4\skip4\skip4\skip4\skip4\skip4\skip4
  te la mia
  "cru-" del __\skip4\skip4\skip4\skip4 "sor" --\skip4\skip4\skip4\skip4 "te," __\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4
  \skip4 E "quant'" "è" "tris-" "t'el" fin' __\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 del --\skip4 la
  mia guer- "ra," Per __\skip4\skip4\skip4\skip4 "tro-" p'a- "mar," __\skip4\skip4\skip4\skip4\skip4\skip4 io son con- "dot-" t'a
  "mor" --\skip4\skip4\skip4\skip4\skip4\skip4\skip4 "te," 
  Tris -- to co -- lui "ch'a" -- mor cru -- de -- "le af"
  -- "fer-" "ra," "Ques-" "t'è" del ser -- vir suo so -- la "mer-" ce
  -- "de," Et mor -- tal co -- "s'a" -- mar con trop -- pa "fe-" "de,"
  et mor -- tal co -- "s'a" -- mar con trop -- pa "fe-" "de,"
  et mor -- tal co -- "s'a" -- mar con trop -- pa "fe-" "de."
  
}

festa_venite_incipit_bassus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Bassus" }
	\relative c{
	\global
	\time 2/2
	\clef "petrucci-f4"
	\set Score.timing = ##f
	d1
	}
	
	>>
                           
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }


festa_venite_bassus = \relative c{
  \global
  \clef bass
   d1 e2 d2  % 1
  g1 f1  % 3
  g2  bes1 a4  g4    % 2
  a1 r2 g2  ~  % 5
  g2 f4  e4   d1  % 6
  g1 r2 g2  % 7
  f2.  g4 a2  bes2   % 4
  g1.  f4  e4    % 9
  d1 r2 f2  
  g2 e2 d2 d2  % \breve\breve
  r2 g1  f4  e4    % \breve1
  d2 g2 c,1  % \breve3
  bes1 r2 c2 ~  % \breve2
  c2 d1 g,2   % \breve5
  \[ c1  f1\]   % 8
  d2 g2.  f4 e4  d4    % \breve7
  c2 d1 \ficta es2  % \breve4
  f2 d2 r2 d2  % \breve9
  \[ a'1  bes1 \]   
  a2 g2 r2 c,2  % 1\breve
  f1 e2 d2   % 11
  f1 g2. a4  % 13
  bes2 a2.  g4 f4  e4   % 12
  f1  g1  % 15
  d2 g1 g2  % 16
  d2. e4 f2 g2  % 17
  f2 f2 es1   % 14
  d1 r2 c2 ~  % 19
  c2 d2 a1  
  d2.  e4 f4  g4  a2  % 3\breve
  a4  g4  f4  e4  d2 g2   % 31
  f1 r2 f2~   % 33
  f4  g4   a2 d,1   % 32
  r2 g1 f2  % 35
  d2 g1 c,2  % 36
  g'2  c,2 d1   % 37
  \mens g,\breve \endmens \bar "||"
  \mens g'\breve  ~ \endmens % 39
  g1 g1  
  f1 g2 d2   % 2\breve
  es1 d2 f2  ~  % 21
  f2 g2  d1  % 23
  r1 g,1  % 22
  d'1 g1  % 25
  d1 g,1  % 26
  d'2 f2 e2 g2  % 27
  d2 f1  e4  d4     % 24
  a'1 d,1  % 29
  e2 g2 f2  d2   
  g1 r2 g2  % 5\breve
  d2 f2 c2 d2 ~  % 51
  d2 g2 f1  % 53
  g2 f2 d2 g2   % 52
  d1 r2 f2  ~  % 55
  f2 g2  d1  % 56
  r2 g2 d2 g2  % 57
  f2 f2 g2 a2  % 54
  f2 g2 d1  % 59
  \mens g, \longa \endmens \bar "||"
  
  
  
  
}

festa_venite_lyrics_bassus = \lyricmode { 
 Ve -- ni -- "te a-" man --
  "ti in" -- "sie" --\skip4\skip4\skip4 "me," "in" -- \skip4\skip4 sie -- me a "pian" --\skip4\skip4 ger "for" --\skip4\skip4 "te," a
  pian -- ger for -- "te," a __ __\skip4\skip4 pian -- ger for -- "te," "So" -- pr'al mio
  "cor" --\skip4 po "mor" --\skip4\skip4\skip4 to "stes'" in ter -- "ra," Et "ve" --\skip4 dre -- "te," et
  ve -- dre -- te la mia cru -- del "sor" --\skip4\skip4\skip4\skip4 "te," E "quant'" "è" tris
  -- "to_el" fin del -- la mia guer -- "ra," Per "trop-" p'a -- "ma" --\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4\skip4 
  "re," a --\skip4 ma -- "re," io son con- "dot-" t'a "mor" --\skip4\skip4  "te." "Tris-" to
  co -- lui "ch'a" -- mor cru -- "de" -- \skip4 le af -- fer -- "ra," af -- fer
  -- "ra," "Ques-" "t'è" del ser -- vir __ __\skip4\skip4 suo so -- la mer -- "ce" --\skip4 "de,"
  Et mor -- tal co -- sa a -- mar con trop -- pa fe -- "de," "fe" --\skip4
  "de," et mor -- tal co -- "s'a" -- mar con trop -- pa fe -- "de."  
  
}