%ficta = { \once \set suggestAccidentals = ##t }

%mens ={ \override Staff.NoteHead.style = #'baroque }

%endmens ={ \revert Staff.NoteHead.style }

\include "../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"


#(set-global-staff-size 18)
%landscape option
\paper{
  %horizontal-shift = #8
%print-page-number = #ff
}

%#(set-default-paper-size "a4" 'landscape)



\include "Anonymous-Colonna-O-viver-mio-noioso_parts.ly"

\header{
 title= \markup{
   \override #'(font-name . "Hultog") 
   "O viver mio noioso" } 
 subtitle = \markup{ 
   \override #'(font-name . "Hultog") 
   "De' diversi autori, quarto libro a quattro voci (1554)" }
 composer = \markup{ \override #'(font-name . "Hultog") "Anonymous" }
 poet = \markup{ \override #'(font-name . "Hultog") "Vittoria Colonna (1492-1547)" }
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2019" }
 %tagline ="Nicholas Cornia,2019"
 arranger =  \markup{ \override #'(font-name . "Hultog") "Gardano" }
 tagline = \markup{ \epsfile #X #35 #"./vecchie musiche_logo1.eps"}
 %piece ="Transposed an x higher than original."
}

%\paper {
 %top-system-spacing #'basic-distance = #10
  %system-system-spacing #'basic-distance = #15
  %last-bottom-spacing #'basic-distance = #10
%horizontal-shift = #3
%top-margin = 1.5 \cm
%bottom-margin = 1 \cm
%left-margin = 1.8 \cm
%right-margin = 1.8 \cm
%#(define fonts
 %   (set-global-fonts
    
    
  %  )
  %)

%}

%#:roman "Humanistic"
 %   #:sans "HumanisticCursive"



\version "2.18.2"



\score{

  \new ChoirStaff<< 
 \new Voice ="cantus" \with {
    \include "../../Vecchie-musiche/voice_options_vecchie_musiche.ly"} <<
   \transpose c c{
     \colonnaoviver_cantus
   }
   %\set Staff.instrumentName = #"Cantus"
   \set Staff.instrumentName = \incipitcolonnaoviver_cantus
      \set Staff.shortInstrumentName = #"C."

    \set Staff.midiInstrument =#"church organ"

 >>
 \new Lyrics \lyricsto cantus \colonnaoviver_lyrics_cantus
  \new Voice ="altus" \with {
    \consists "Ambitus_engraver"} <<
   \transpose c c{
     \colonnaoviver_altus
   }
   \set Staff.instrumentName = \incipitcolonnaoviver_altus
      \set Staff.shortInstrumentName = #"A."

   \set Staff.midiInstrument =#"church organ"
>>
 \new Lyrics \lyricsto altus \colonnaoviver_lyrics_altus
 \new Voice ="tenor" \with {
    \consists "Ambitus_engraver"} <<
  \transpose c c{
     \colonnaoviver_tenor
   }
   %\set Staff.instrumentName = #"Tenor"
   \set Staff.instrumentName = \incipitcolonnaoviver_tenor
      \set Staff.shortInstrumentName = #"T."

      \set Staff.midiInstrument =#"church organ"

 >>
 \new Lyrics \lyricsto tenor \colonnaoviver_lyrics_tenor
 \new Voice ="bassus" \with {
    \consists "Ambitus_engraver"} <<
   \transpose c c{
     \colonnaoviver_bassus
   }
   %\set Staff.instrumentName = #"Bassus"
   \set Staff.instrumentName = \incipitcolonnaoviver_bassus
   \set Staff.shortInstrumentName = #"B."
   \set Staff.midiInstrument =#"church organ"
 >>
 \new Lyrics \lyricsto bassus \colonnaoviver_lyrics_bassus

 
 >> 
 
 \midi{\tempo 2 = 240}
 
 
 
 
\include "../../Vecchie-musiche/layout_vecchie_musiche.ly" 
 
 
}

\markup{
\vspace #3.0  
%structuur 11-11-5-11-5-6-5-11
\column{
  \line{\bold"Madrigale"}
  \line{O viver mio noioso adversa sorte,}
  \line{Cerco l'oscurità fuggo la luce,}
  \line{Bramo la morte,}
  \line{Quel ch' agli occhi altrui noce a me riluce,} 
  \line{Perché chiudendo lor s'apron le porte,}
  \line{Alla cagion ch'al mio sol mi conduce,}

 }
} 




  