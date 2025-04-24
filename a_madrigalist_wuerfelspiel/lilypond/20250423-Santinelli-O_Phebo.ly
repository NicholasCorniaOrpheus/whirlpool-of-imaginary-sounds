

\include "paper_setting_vecchie_musiche.ly"

\language "english"


#(set-global-staff-size 18)
%landscape option
\paper{
  %horizontal-shift = #8
%print-page-number = #ff
}

%#(set-default-paper-size "a4" 'landscape)

\header{
 title= \markup{
   \override #'(font-name . "Hultog") 
   "A Madrigalist Wuerfelspiel" } 
 subtitle = \markup{ 
   \override #'(font-name . "Hultog") 
   "A Whirlpool of Imaginary Sounds" }
 composer = \markup{ \override #'(font-name . "Hultog") "Tarot game, v1" }
 poet = \markup{ \override #'(font-name . "Hultog") "Francesco Maria Santinelli (1627-1667)" }
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2025" }
 %tagline ="Nicholas Cornia,2025"
 arranger =  \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia" }
 tagline = \markup{ \epsfile #X #35 #"wois.eps"}
 piece ="Carlo Quinto, VI"
}





\version "2.18.2"

\include "20250423-Santinelli-O_Phebo_parts.ly"


\score{

  \new ChoirStaff<< 
 \new Voice ="cantus" \with {
    \include "voice_options_vecchie_musiche.ly"} 
 <<
   \transpose c c{
     \santinelli_o_phebo_cantus
   }
   %\set Staff.instrumentName = #"Cantus"
   \set Staff.instrumentName = \santinelli_o_phebo_incipit_cantus
      \set Staff.shortInstrumentName = #"C."

    \set Staff.midiInstrument =#"choir aahs"

 >>
 \new Lyrics \lyricsto cantus \santinelli_o_phebo_lyrics_cantus
  \new Voice ="altus" \with{  \include"voice_options_vecchie_musiche.ly" } 
  <<
   \transpose c c{
     \santinelli_o_phebo_altus
   }
   \set Staff.instrumentName = \santinelli_o_phebo_incipit_altus
      \set Staff.shortInstrumentName = #"A."

   \set Staff.midiInstrument =#"choir aahs"
>>
 \new Lyrics \lyricsto altus \santinelli_o_phebo_lyrics_altus
 \new Voice ="tenor" \with{  \include"voice_options_vecchie_musiche.ly" }
 <<
  \transpose c c{
     \santinelli_o_phebo_tenor
   }
   %\set Staff.instrumentName = #"Tenor"
   \set Staff.instrumentName = \santinelli_o_phebo_incipit_tenor
      \set Staff.shortInstrumentName = #"T."

      \set Staff.midiInstrument =#"choir aahs"

 >>
 \new Lyrics \lyricsto tenor \santinelli_o_phebo_lyrics_tenor
 \new Voice ="bassus" \with{  \include"voice_options_vecchie_musiche.ly" } 
 <<
   \transpose c c{
     \santinelli_o_phebo_bassus
   }
   %\set Staff.instrumentName = #"Bassus"
   \set Staff.instrumentName = \santinelli_o_phebo_incipit_bassus
   \set Staff.shortInstrumentName = #"B."
   \set Staff.midiInstrument =#"choir aahs"
 >>
 \new Lyrics \lyricsto bassus \santinelli_o_phebo_lyrics_bassus

 
 >> 
 
 \midi{\tempo 2 = 100}
 
 
 
 
\include "layout_vecchie_musiche.ly" 
 
 
}

\markup{
\vspace #3.0  

\column{
  \line{\bold"Ottava Rima, Carlo Quinto VI"}
  % 
  \vspace#1.0
  \line{O Phebo, o Sole, universal Natura}
  \line{Dal caotico Mondo al mondo uscito}
  \line{De la Terra, e del Ciel moto, e misura}
  \line{De la luce vital Fonte infinita}
  \line{Tu de i quattro elementi Essenza pura}
  \line{Di questa purità Semplice Vita}
  \line{Tu fluid'Or, Tu l'humido Thesauro}
  \line{Ch'al tuo Lume central s'indura in Auro.}
  

 }
} 




  