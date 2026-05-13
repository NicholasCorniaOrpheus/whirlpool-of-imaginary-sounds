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



\include "Nola-Gambara-Tosto-ch-il-sol-si-scopre-in-Oriente_parts.ly"

\header{
 title= \markup{
   \override #'(font-name . "Hultog") 
   "Tosto ch'il sol si scopre in Oriente" } 
 subtitle = \markup{ 
   \override #'(font-name . "Hultog") 
   "Madregali Ariosi a Quattro Voci (1565)" }
 composer = \markup{ \override #'(font-name . "Hultog") "Giovanni Domenico da Nola (c. 1520 - 1592)" }
 poet = \markup{ \override #'(font-name . "Hultog") "Veronica Gambara " }
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2021" }
 %tagline ="Nicholas Cornia,2019"
 arranger =  \markup{ \override #'(font-name . "Hultog") "Gardano" }
 tagline = \markup{ \epsfile #X #35 #"../../Vecchie-musiche/vecchie musiche_logo1.eps"}
 %piece ="Transposed an x higher than original."
}





\version "2.18.2"



\score{

  \new ChoirStaff<< 
 \new Voice ="cantus" \with {
    \include "../../Vecchie-musiche/voice_options_vecchie_musiche.ly"} 
 <<
   \transpose c c{
     \nola_tosto_chil_sol_cantus
   }
   %\set Staff.instrumentName = #"Cantus"
   \set Staff.instrumentName = \nola_tosto_chil_sol_incipit_cantus
      \set Staff.shortInstrumentName = #"C."

    \set Staff.midiInstrument =#"choir aahs"

 >>
 \new Lyrics \lyricsto cantus \nola_tosto_chil_sol_lyrics_cantus
  \new Voice ="altus" \with{  \include"../../Vecchie-musiche/voice_options_vecchie_musiche.ly" } 
  <<
   \transpose c c{
     \nola_tosto_chil_sol_altus
   }
   \set Staff.instrumentName = \nola_tosto_chil_sol_incipit_altus
      \set Staff.shortInstrumentName = #"A."

   \set Staff.midiInstrument =#"choir aahs"
>>
 \new Lyrics \lyricsto altus \nola_tosto_chil_sol_lyrics_altus
 \new Voice ="tenor" \with{  \include"../../Vecchie-musiche/voice_options_vecchie_musiche.ly" }
 <<
  \transpose c c{
     \nola_tosto_chil_sol_tenor
   }
   %\set Staff.instrumentName = #"Tenor"
   \set Staff.instrumentName = \nola_tosto_chil_sol_incipit_tenor
      \set Staff.shortInstrumentName = #"T."

      \set Staff.midiInstrument =#"choir aahs"

 >>
 \new Lyrics \lyricsto tenor \nola_tosto_chil_sol_lyrics_tenor
 \new Voice ="bassus" \with{  \include"../../Vecchie-musiche/voice_options_vecchie_musiche.ly" } 
 <<
   \transpose c c{
     \nola_tosto_chil_sol_bassus
   }
   %\set Staff.instrumentName = #"Bassus"
   \set Staff.instrumentName = \nola_tosto_chil_sol_incipit_bassus
   \set Staff.shortInstrumentName = #"B."
   \set Staff.midiInstrument =#"choir aahs"
 >>
 \new Lyrics \lyricsto bassus \nola_tosto_chil_sol_lyrics_bassus

 
 >> 
 
 \midi{\tempo 2 = 100}
 
 
 
 
\include "../../Vecchie-musiche/layout_vecchie_musiche.ly" 
 
 
}

\markup{
\vspace #3.0  

\column{
  %\line{\bold"Prima Parte"}
  \line{Tosto ch'il sol si scopre in oriente,}
  \line{Lagrimosa tempesta a gli occhi sorge,}
  \line{Né perché si riscopre in occidente,}
  \line{\auto-footnote \italic "Tregua" \italic "Triegua" al mio lagrimar la doglia porge,}
  \line{Splendon le stelle poi il gorno seguente,}
  \line{Sempre più vivo il mio pianto risorge,}
  \line{O sia turbida \auto-footnote "l'ora" \italic "l'or"  o sia tranquilla,} 
  \line{In mestissimo \auto-footnote "umor" \italic "humor" l'alma restilla.}
}
%\hspace #15
%\column{
  
  %\line{\bold "Seconda Parte"}
  %\line{}
  

 %}
} 




  