ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }


global = {
 \key f \major
 \time 4/2
  \autoBeamOff
}

nola_tosto_chil_sol_incipit_cantus = \markup { \score {
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
	d'1
	
	  >>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
      
  }

                                        }  \hspace #1 }
	


nola_tosto_chil_sol_cantus = \relative c'{
 \global
  %\clef "treble_8"
  \clef treble
d1 d2 d4 e2 e4 f2 f1 es!2 es d1 d2 g2. g4 g2 g g4 a2 a4 g2. g4 g1 fis!2 r d d4 d2 e e4 
f2. f4 f e f1 f r2 f f f4 es!2 es4 d2 f2 es!1 es2 d1 d r1 \break g2 g g4 g2 g4 g2 es!2 es4 d \ficta es2 d1 r2 fis!
\ficta fis2 fis4 g2 g4 g2. g4 g fis! g2 fis!2 r d d e2. c4 c2 d2. d4 e2 f2 g1. fis!2 r2 g2. g4 g2 g g a1 f es!2 es d1
d2 g2. g4 g2 g g a1 f1 es!2 es d1 d\longa*1/4 \bar"||"
}

nola_tosto_chil_sol_lyrics_cantus = \lyricmode { 
 To -- sto ch'il sol __ si sco -- pre~in o -- ri -- en -- te
  La -- gri -- mo -- sa tem -- pe -- sta~a gli~oc -- chi sor -- ge
  Né per -- ché si __ ri -- sco -- pre~in oc -- ci -- den -- te
  Tre -- gua~al mio la -- gri -- mar la do -- glia por -- ge
  Splen -- don le stel -- le poi~il gior -- no se -- guen -- te
  Sem -- pre più vi -- vo~il mio __ pian -- to ri -- sor -- ge
  O sia tur -- bi -- da l'or o sia tran -- quil -- la 
  In __ me -- stis -- si -- mo~u -- mor l'al -- ma re -- stil -- la,
   In __ me  -- stis -- si -- mo~u -- mor l'al -- ma re -- stil -- la.

}

nola_tosto_chil_sol_incipit_altus = \markup { \score {
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
	a1
	}
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
       
  }

} \hspace #1 }

nola_tosto_chil_sol_altus = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
  a1 a2 a4 c2 c4d2 d1 c2. bes4 a g a2 b!2 d2. d4 d2 e e4 f2 f4 d2 d4 d2  c4 d1 r2 a a4 a2 c2 c4
  c2. d4 d bes c1 d r2 d d d4 c2 c4 a2 d bes bes c4 bes a g a2 b!1 r  es!2 es es4 es2 es4 d2 c c4 b! c1 b!2
  r2 d d d4 es!2 es4 d2. \ficta es4 d d d c d2 r2 b!2 b c2. a4 a2 bes2. bes4 g c bes8[a] d2 c8[ bes]  c2 d1 r2 d2. d4 d2 e e 
  f1 d bes2 c4 bes2 a8[g] a2 b! d2. d4 d2 e e f1 d bes2 c4 bes a g a2 b!\longa*1/4 \bar"||"
 
}

nola_tosto_chil_sol_lyrics_altus = \lyricmode { 
To -- sto ch'il sol __ si sco -- pre~in o -- ri -- en -- \skip4\skip4 te
  La -- gri -- mo -- sa tem -- pe -- sta~a gli~oc -- chi sor -- \skip4 ge
  Né per -- ché si __ ri -- sco -- pre~in oc -- ci -- den -- te
  Tre -- gua~al mio la -- gri -- mar la do -- glia por --  \skip4\skip4\skip4\skip4 ge
  Splen -- don le stel -- le poi~il gior -- no se -- guen -- te
  Sem -- pre più vi -- vo~il mio __ pian -- to ri -- sor -- \skip4 ge
  O sia tur -- bi -- da l'or o sia tran --  \skip4 quil -- \skip4\skip4 la 
  In __ me -- stis -- si -- mo~u -- mor l'al -- ma re -- stil -- \skip4\skip4 la,
   In __ me -- stis -- si -- mo~u -- mor l'al -- ma re -- \skip4\skip4\skip4 stil -- la.


}

nola_tosto_chil_sol_incipit_tenor = \markup { 
  \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Tenore" }
	\set Score.timing = ##f
	\global
	\clef "petrucci-c4"
	\time 4/4
	fis!1
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }

nola_tosto_chil_sol_tenor = \relative c'{
  \global
  \clef "treble_8"
  %\clef treble
  fis,!1 fis2 fis4 g2 g4 bes2 bes2. a4 g f g2. \ficta fis8[e] fis!2 g2 b!2. b4 b2 c2 c4 c2 d4 bes2. a4 g2 a1 r2 fis!
  fis4 fis2 g2 g4 a2. bes4 a bes2 a8[g] a2 bes1 r2 bes bes bes4 g2 g4 f2 bes g1 a4 g2 \ficta fis8[e] fis!2 g1 r1 bes2 bes bes4 c2 c4 
  bes2 g g4 g4 g2 g1 r2 a a a4 c2 c4 b!2. c4 bes a g2 a r g g g2. f4 f2 f f4 g2 a4. f8 bes4. a8 g [f] g2 a1 
  r2 b!2. b4 b2 c c c c bes2. a4 g f g2. \ficta fis8[e] fis!2 g b!2. b4 b2 c c c c bes2. a4 g f g2. \ficta fis8[e] fis!2 g\longa*1/4 \bar"||"
}

nola_tosto_chil_sol_lyrics_tenor = \lyricmode { 
To -- sto ch'il sol __ si sco -- pre in o -- ri -- en -- \skip4\skip4 te
  La -- gri -- mo -- sa tem -- pe -- sta~a gli~oc -- chi sor -- ge
  Né per -- ché si __ ri -- sco -- pre~in oc -- ci -- \skip4 den -- te
  Tre -- gua~al mio la -- gri -- mar la do -- glia por -- \skip4\skip4 ge
  Splen -- don le stel -- le poi~il gior -- no se -- guen -- te
  Sem -- pre più vi -- vo~il mio __ pian -- to ri -- sor -- ge
  O sia tur -- bi -- da l'or o sia tran -- \skip4 quil -- \skip4\skip4\skip4 la 
  In __ me -- stis -- si -- mo~u -- mor l'al -- ma __ \skip4\skip4\skip4 re -- \skip4 stil -- la,
   In __ me -- stis -- si -- mo~u -- mor l'al -- ma __ \skip4\skip4\skip4 re -- \skip4 stil -- la.



}

nola_tosto_chil_sol_incipit_bassus = \markup { 
  \score {
	{
	\new MensuralVoice <<  
	\set Staff.instrumentName = \markup { "Basso" }
	\set Score.timing = ##f
	\global
	\clef "petrucci-f4"
	\time 4/4
	d1
	
	
	>>
                                               }
\layout{
        raggedright = ##t
	indent = 1.6 \cm
	line-width = 2.2 \cm
        
  }

} \hspace #1 }


nola_tosto_chil_sol_bassus = \relative c{
  \global
  \clef bass
d1 d2 d4 c2 c4 bes2 bes1 c2 c d1 g,2 g'2. g4 g2 c, c4 f2 d4 g2. f4 es!2 d1 r2 d d4 d2 c2 c4 
f2. bes,4 f' g f1 bes, r2 bes bes bes4 c2 c4 d2 bes es!1 c2 d1 g, r \break es'!2 es es4 c2 c4 g'2 c,2 c4 g c2 g1 r2 d'
d d4 c2 c4 g'2. c,4 g' d es!2 d r2 g, g c2. f,4 f2 bes2. bes4 c2 d es!1 d r2 g2. g4 g2 c, c f1 bes, es!2 c d1 
g,2 g'2. g4 g2 c, c f1 bes, es!2 c d1 g,\longa*1/4 \bar"||"
  
  
  
}

nola_tosto_chil_sol_lyrics_bassus = \lyricmode { 
To -- sto ch'il sol __ si sco -- pre~in o -- ri -- en -- te
  La -- gri -- mo -- sa tem -- pe -- sta~a gli~oc -- chi sor -- ge
  Né per -- ché si __ ri -- sco -- pre~in oc -- ci -- den -- te
  Tre -- gua~al mio la -- gri -- mar la do -- glia por -- ge
  Splen -- don le stel -- le poi~il gior -- no se -- guen -- te
  Sem -- pre più vi -- vo~il mio __ pian -- to ri -- sor -- ge
  O sia tur -- bi -- da l'or o sia tran -- quil -- la 
  In me -- stis -- si -- mo~u -- mor l'al -- ma re -- stil -- la,
   In me -- stis -- si -- mo~u -- mor l'al -- ma re -- stil -- la.

  
}