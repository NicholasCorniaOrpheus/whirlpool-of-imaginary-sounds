ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }


global = {
 \key f \major
 \time 4/2
  \autoBeamOff
}

reggio_quanti_son_poi_che_divenuti_amanti_incipit_cantus = \markup { \score {
	{
	  \new MensuralVoice<<
	\set Staff.instrumentName = \markup { "Canto" }
	\global
	%\clef "petrucci-c1"
	\clef "petrucci-c3"
	% \omit Score.BarLine
	 \set Score.timing = ##f
	%\override Staff.NoteHead.style = #'neomensural
	\time 4/4
	f1
	
	  >>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
      
  }

                                        }  \hspace #1 }
	


reggio_quanti_son_poi_che_divenuti_amanti_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
  \mark "Prima Parte"
  f1 e2 r4 g4. g8 g4 a2 f4 g2 f4 f e d2 e4 g2 a a4 g1 g4 f2 f f4 e2 e4 f2 e4 d f e2 d1 r2
  r a' a4 a c2 g4 a2 bes4 g2. g4 g1 fis!4 a2 bes4 c2 \ficta f,4 bes2 g c4. bes8[a g] f[g a bes] c4 c bes g g2 g r1 g2 a bes c 
  a bes c4. bes8[a g] a2 g4 a d2 c a4 bes2 bes4 g2 e4 e e f2 e c' a4 c bes bes a2 d4 bes2 a4 g2 g r g bes2. a4 g2 f
  e1 f2 g1 f2 e1 e2 g bes2. a4 g2 f e1 c2 d1 e2 f1 e2 f f f e1 e\longa*1/4 \bar"||" 
  \pageBreak
  \mark "Seconda Parte"
  c1 d2 d4 d2 f4 e f f f
  a4. g8 f2 e1 r2 d e c4 d2 f4 e2 c4 d4. c8 c2 \ficta b4 c1 c2 c' a4 a d4. c8 bes4. a8 g2. f4 f f d f2 e4 f a2 bes a4 
  g2 f2 d4 e2 f4 d e f2 e4 e2 a a4 bes bes a2 g4 f2 e4 d2 e r g a a4 g2 g4 fis!1 e2 d1. c2 d1 cis!1 \break r2 e \break f d 
  e4. f8 g4 a2 g4 a f2 e4 d2 e4 g2 a g4 fis!4 a a g f g4. f8 f2 e4 f c2 d d4 e2 c4 d4. e8 f d e4 f2 e4 f\longa*1/4 \bar"||"

}

reggio_quanti_son_poi_che_divenuti_amanti_lyrics_cantus = \lyricmode { 
 Quan -- ti, quan -- ti son poi che di -- ve -- nu -- ti~a -- man -- ti
        Di duoi be -- gl'oc -- chi,
        di duoi be -- gl'oc -- ch'e d'un leg -- gia -- dro vi -- so __
        Si pa -- scon sol di do -- lo -- ro -- si pian -- ti
        Da se stes -- si te -- nen -- \skip4\skip4\skip4\skip4 d'il cor di -- vi -- so
        Né gio -- ia né pia -- cer so -- no __ ba -- stan -- ti
        trar -- li del pet -- to se non fin -- to ri -- so
        Et se lie -- ti ta -- lor si mo -- stran fuo -- ri
        Han -- no per un pia -- cer mil -- le do -- lo -- ri,
        Han -- no per un pia -- cer mil -- le __ do -- lo -- ri,
        mil -- le do -- lo -- ri.
        
 
 %Seconda Parte
 Chi vi -- ve sen -- za mai tro -- var ri -- po -- \skip4\skip4 so
  Lon -- ta -- no dal -- l'a -- ma -- t'e dol -- \skip4\skip4 ce vi -- sta
  Ch'a se stes -- so di -- vien __ \skip4\skip4 gra -- v'e no -- i -- o -- \skip4 so
  Sol per un sguar -- do o~u -- na pa -- ro -- la tri -- sta
  Chi d'un no -- vo ri -- val fat -- to ge -- lo -- so
  Qua -- si~al par del mo -- rir si duo -- l'e~at -- tri -- sta
  Chi si con -- su -- \skip4\skip4 m'in al -- tre va -- rie pe -- ne
  Più spes -- s'as -- sai che le mi -- nu -- te~a -- \skip4 re -- \skip4 ne,
  Più spes -- s'as -- sai che le mi -- nu -- te~a -- re -- \skip4\skip4 ne.


}

reggio_quanti_son_poi_che_divenuti_amanti_incipit_altus = \markup { \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Alto" }
	\relative c'{
	\clef "petrucci-c3"
	\global
	\set Score.timing = ##f
	%\override Staff.NoteHead.style = #'petrucci
	%\override Rest.style = #'mensural
	%\override TimeSignature.style = #'neomensural
	\time 4/4
	c'1
	}
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
       
  }

} \hspace #1 }

reggio_quanti_son_poi_che_divenuti_amanti_altus = \relative c'{
  \global
  \clef "treble_8"
  
  \mark "Prima Parte"
  c1 c2 r4 e4. e8 e4 f2 d4 es!2 d4 d c a4. bes8 c4 e2 f f4 e2 d e4 c2 d d4 c2 c4 c2 c4 
  a4 bes c2 b!1 r4 d d d f2 c es!2 bes4 f'2 f4 es! es es2. es4 bes4. c8 d4 f2 f4 \ficta e2 d es!1 c2 d2 e4. f8 g4 e 
  d2 e1 r2 r1 d2 e f g4. g8 g4 f f f d4. e8 f4 f2 f f4 d2 d4 e2 c4 c c a4. bes8 c2 e2 e4 f f f f2 
  f4 g2 f4 e2 e r e f2. f4 d2 d c1 d2 es!1 c2 c1 c2 e f2. f4 d2 d c1 a2 bes1 c2. \ficta b8[c] \ficta b2 c c d d c1 c\longa*1/4 \bar"||"
  \pageBreak
  \mark "Seconda Parte"
  %\clef treble
a1 bes2 bes4 a2 bes4 c d c f,4. g8 a2 g8[f] g2 r a bes g a4 bes2 a4 c2 a4 bes2 c4 f, f g1 a r2 f' d4 d e2 e4 d d 
a4 bes a c2 c4 f2 f f4 d2 d bes4 c2 c4 a g f2 g4 c2 f f4 g g f2 e4 d2 c \ficta b4 c2 r e f f4 e2 e4 d1 c2 bes1. a1 g2 
a1 \break r1 \break a2 bes g4 g'2 f4 f e8[d] c4 d2 c \ficta b4 c e2 f2 d4 d c c c d2. bes4 c2 c4 a2 bes a4 c2 a4 bes2 d4 c bes c2 c\longa*1/4 \bar"||"
}

reggio_quanti_son_poi_che_divenuti_amanti_lyrics_altus = \lyricmode { 
Quan -- ti, quan -- ti son poi che di -- ve -- nu -- ti~a -- man -- \skip4 ti
        Di duoi be -- gl'oc -- \skip4 chi,
        di duoi be -- gl'oc -- ch'e d'un leg -- gia -- dro vi -- so __
        Si pa -- scon sol,
        si pa -- scon sol 
        di do -- lo -- ro -- si pian -- \skip4 ti
        Da se stes -- si te -- nen -- d'il cor __ \skip4\skip4 di -- vi -- so
        Né gio -- ia né pia -- cer so -- no __ ba -- stan -- \skip4 ti
        trar -- li del pet -- to se non fin -- to ri -- \skip4 so
        Et se lie -- ti ta -- lor si mo -- stran fuo -- ri
        Han -- no per un pia -- cer mil -- le do -- lo -- ri,
        Han -- no per un pia -- cer mil -- le __ do -- \skip4 lo -- ri,
        mil -- le do -- lo -- ri.


%Seconda Parte

Chi vi -- ve sen -- za mai tro -- var ri -- \skip4 po -- \skip4 so
  Lon -- ta -- no, lon -- ta -- no dal -- l'a -- ma -- t'e dol -- ce vi -- sta
  Ch'a se stes -- so di -- vie -- ne 
  gra -- v'e no -- io -- so
  Sol per un sguar -- do o~u -- na pa -- ro -- la tri -- sta
  Chi d'un no -- vo ri -- val fat -- to ge -- lo -- so
  Qua -- si~al par del mo -- rir __ si duo -- l'e~at -- tri -- sta
  Chi si con -- su -- m'in al -- \skip4 tre va -- rie pe -- ne
  Più spes -- s'as -- sai che le mi -- nu -- te~a -- re -- ne,
  Più spes -- s'as -- sai che le mi -- nu -- te~a -- re -- ne.


}

reggio_quanti_son_poi_che_divenuti_amanti_incipit_tenor = \markup { 
  \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
	\set Score.timing = ##f
	\global
	\clef "petrucci-c4"
	\time 4/4
	a1
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

reggio_quanti_son_poi_che_divenuti_amanti_tenor = \relative c'{
  \global
  \clef "treble_8"
  \mark "Prima Parte"
  a1 g2 r4 c4. c8 c4 c2 bes4 bes2 bes4 bes g fis!2 g4 c2 a d4. c8 c2 \ficta b4 c a2 bes2 bes4 g2 g4 a2 g4 f f 
  g2 g r4 g g g bes2 r4 a2 c g d'2 d4 c2. c4 bes4. a8 g2 a4 f2 g4 g2 bes g c a2. f4 g a bes c2 \ficta b4 c g2 a bes 
  c d g, c4 c4. c8 es!4. es8 es4 c4. c8 c4 bes2 a4 bes2 c c4 bes2 bes4 c2 g4 a a f2 g4 c2 a f4 bes4. c8 d2 bes4 es!2 f4 
  c2 c r c d2. c4 bes2. a4 g1 bes2 bes1 a2 g1 g2 c2 d2. c4 bes2. a4 g1 f2 f1 a g4 f g2 a bes bes g1 g\longa*1/4 \bar"||"
  \pageBreak
  \mark "Seconda Parte"
  %\clef treble
  f1 f2 f4 f2 f4 g bes a d4. c8 c2 \ficta b4 c4 g2 a f g e4 f2. f4 g2 f4. e8 d4 a'4. g8 f2 e8[d] e2 f4 c'2 a f4 
  bes4 a r bes bes2 c4 a2 f4 f f g2 a4 c2 d c4 bes2 a g4 g2 a4 a c2 \ficta b4 c g2 d' d4 g,4 g d'2 g,4 bes2 c4 g2 c, r c'
  c2 c4 c2 c4 a1 a2 f2. e4 d2 f1 e4 d e \break e2 f g a f g c a4 bes c2 bes4 a g2 f4 g c2 c bes4 a4. g8 f4 g 
  a4 bes4. a8 g[f] g2 f4 f2 f f4 g2 f4 f2 bes4 a f g2 f\longa*1/4 \bar"||"
 
 
}

reggio_quanti_son_poi_che_divenuti_amanti_lyrics_tenor = \lyricmode { 
Quan -- ti, quan -- ti son poi che di -- ve -- nu -- ti~a -- man -- ti
        Di duoi be -- \skip4 gl'oc -- \skip4 chi,
        di duoi be -- gl'oc -- ch'e d'un leg -- gia -- dro vi -- so
        Si pa -- scon sol,
        si pa -- scon sol 
        di do -- lo -- ro -- si pian -- ti
        Da se stes -- si te -- nen -- do il cor di -- vi -- \skip4\skip4 so
        Né gio -- ia né pia -- cer,
        \override Lyrics.LyricText.font-shape = #'italic
        né gio -- ia né pia -- cer,
        \revert Lyrics.LyricText.font-shape
        so -- no __ ba -- stan -- ti
        trar -- li del pet -- to se non fin -- to ri -- so
        Et __ se lie -- ti ta -- lor si mo -- stran fuo -- ri
        Han -- no per un pia -- cer mil -- le do -- lo -- ri,
        Han -- no per un pia -- cer mil -- le __ do -- lo -- \skip4 ri,
        mil -- le do -- lo -- ri.

%Seconda Parte
Chi vi -- ve sen -- za mai tro -- var ri -- \skip4 po -- \skip4 so
  Lon -- ta -- no __ dal -- l'a -- ma -- t'e dol -- \skip4\skip4 ce vi -- \skip4\skip4\skip4\skip4 sta
  Chi a se stes -- so 
  di -- vien gra -- ve, gra -- v'e no -- io -- so
  Sol per un sguar -- do o~u -- na pa -- ro -- la __ tri -- sta
  Chi d'un no -- vo ri -- val fat -- to ge -- lo -- so
  Qua -- si~al par del mo -- rir __ si duo -- l'e~at -- tri -- \skip4\skip4\skip4 sta
  Chi si con -- su -- m'in al -- tre va -- rie pe -- \skip4\skip4\skip4\skip4 ne
  Più spes -- s'as -- sai che le mi -- nu -- te~a -- \skip4\skip4 re -- ne,
  Più spes -- s'as -- sai che le mi -- nu -- te~a -- re -- ne.


}

reggio_quanti_son_poi_che_divenuti_amanti_incipit_bassus = \markup { 
  \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
	\set Score.timing = ##f
	\global
	\clef "petrucci-f4"
	\time 4/4
	f1
	
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }


reggio_quanti_son_poi_che_divenuti_amanti_bassus = \relative c{
  \global
  \clef bass
  \mark "Prima Parte"
  f1 c2 r4 c4. c8 c4 f2 bes,4 es!2 bes4 bes c d2 c4 c2 f d4 g1 c,4 f2 bes,2 bes4 c2 c4 f2 c4 d d 
  c2 g4 g' g g bes4. a8 g2 f f c es!4 d2 bes4 c2. c4 es!1 d4 d2 d4 c2 bes \ficta es c4 c f4. \ficta e8 d2 c4 c g'4 c, g'2
  c, c d es! f4 f g2 c, f4 f es! es c f4. f8 f4 g2 d4 bes2 f' f4 g2 g4 c,2 c4 a a d2 c r\longa c1 bes2. bes4 
  bes2 bes c1 bes2 es!1 f2 c1 c2 c bes2. bes4 bes2 bes c1 f,2 bes1 a2 d1 c2 f, bes bes c1 c\longa*1/4 \bar"||"
  \pageBreak
  \mark "Seconda Parte"
f,1 bes2 bes4 d2 d4 c bes f' d f4. e8 d2 c c d bes c f,4 bes4. c8 d4 c2 f,4 bes2 a4 d2 c1 f, f'2 d4 d g2 es!
c4 d2 d4 bes d c2 f,4 f'2 bes,2 f'4 g2 d g,4 c2 f4 f e d2 c r\longa c1 f2 f4 c2 c4 d1 a2 bes1. f2 bes1 a2 \break a bes c \break d 
bes4 bes c4. d8 e4 f d e f bes, c2 d c4 c2 f g4 d f f es! d bes d2 c f,4 f2 bes d4 c2 f,4 bes2 bes4 c d c2 f,\longa*1/4 \bar"||"
  
  
  
}

reggio_quanti_son_poi_che_divenuti_amanti_lyrics_bassus = \lyricmode { 
Quan -- ti, quan -- ti son poi che di -- ve -- nu -- ti~a -- man -- ti
        Di duoi be -- gl'oc -- chi,
        di duoi be -- gl'oc -- ch'e d'un leg -- gia -- dro vi -- so
        Si pa -- scon sol
        di do -- lo -- ro -- si,
        di do -- lo -- ro -- si pian -- ti
        Da se stes -- si,
        da se stes -- si te -- nen -- do il cor di -- vi -- so
        Né gio -- ia né pia -- cer,
        né gio -- ia né pia -- cer,
        so -- no __ ba -- stan -- ti
        trar -- li del pet -- to se non fin -- to ri -- so
       
        Han -- no per un pia -- cer mil -- le do -- lo -- ri,
        Han -- no per un pia -- cer mil -- le __ do -- lo -- ri,
        mil -- le do -- lo -- ri.

%Seconda Parte
Chi vi -- ve sen -- za mai tro -- var ri -- po -- \skip4\skip4 so
  Lon -- ta -- no dal -- l'a -- ma -- \skip4\skip4\skip4 ta~e dol -- ce vi -- \skip4 sta
  Ch'a se stes -- so di -- vien gra -- v'e no -- i -- o -- so
  Sol per un sguar -- do o~u -- na pa -- ro -- la tri -- sta
  %Chi d'un no -- vo ri -- val fat -- to ge -- lo -- so
  Qua -- si~al par del mo -- rir __ si duo -- l'e~at -- tri -- sta
  Chi si con -- su -- ma, Chi si con -- su -- m'in al -- tre va -- rie pe -- \skip4 ne
  Più spes -- s'as -- sai che le mi -- nu -- te~a -- re -- \skip4 ne,
  Più spes -- s'as -- sai che le mi -- nu -- te~a -- re -- ne.

  
}