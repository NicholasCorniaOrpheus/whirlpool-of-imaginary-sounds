

\include "paper_setting_vecchie_musiche.ly"

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
 composer = \markup{ \override #'(font-name . "Hultog") "?" }
 poet = \markup{ \override #'(font-name . "Hultog") "" }
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2025" }
 %tagline ="Nicholas Cornia,2025"
 arranger =  \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia" }
 tagline = \markup{ \epsfile #X #35 #"wois.eps"}
 %piece ="Transposed an x higher than original."
}





\version "2.18.2"

\include "wois-a_madrigalist_wuerfelspiel_parts.ly"


\score{

  \new ChoirStaff<< 
 \new Voice ="cantus" \with {
    \include "voice_options_vecchie_musiche.ly"} 
 <<
   \transpose c c{
     \madrigalist_wuerfelspiel_cantus
   }
   %\set Staff.instrumentName = #"Cantus"
   \set Staff.instrumentName = \madrigalist_wuerfelspiel_incipit_cantus
      \set Staff.shortInstrumentName = #"C."

    \set Staff.midiInstrument =#"choir aahs"

 >>
 \new Lyrics \lyricsto cantus \madrigalist_wuerfelspiel_lyrics_cantus
  \new Voice ="altus" \with{  \include"../../Vecchie-musiche/voice_options_vecchie_musiche.ly" } 
  <<
   \transpose c c{
     \madrigalist_wuerfelspiel_altus
   }
   \set Staff.instrumentName = \madrigalist_wuerfelspiel_incipit_altus
      \set Staff.shortInstrumentName = #"A."

   \set Staff.midiInstrument =#"choir aahs"
>>
 \new Lyrics \lyricsto altus \madrigalist_wuerfelspiel_lyrics_altus
 \new Voice ="tenor" \with{  \include"../../Vecchie-musiche/voice_options_vecchie_musiche.ly" }
 <<
  \transpose c c{
     \madrigalist_wuerfelspiel_tenor
   }
   %\set Staff.instrumentName = #"Tenor"
   \set Staff.instrumentName = \madrigalist_wuerfelspiel_incipit_tenor
      \set Staff.shortInstrumentName = #"T."

      \set Staff.midiInstrument =#"choir aahs"

 >>
 \new Lyrics \lyricsto tenor \madrigalist_wuerfelspiel_lyrics_tenor
 \new Voice ="bassus" \with{  \include"../../Vecchie-musiche/voice_options_vecchie_musiche.ly" } 
 <<
   \transpose c c{
     \madrigalist_wuerfelspiel_bassus
   }
   %\set Staff.instrumentName = #"Bassus"
   \set Staff.instrumentName = \madrigalist_wuerfelspiel_incipit_bassus
   \set Staff.shortInstrumentName = #"B."
   \set Staff.midiInstrument =#"choir aahs"
 >>
 \new Lyrics \lyricsto bassus \madrigalist_wuerfelspiel_lyrics_bassus

 
 >> 
 
 \midi{\tempo 2 = 100}
 
 
 
 
\include "layout_vecchie_musiche.ly" 
 
 
}

\markup{
\vspace #3.0  

\column{
  \line{\bold"Canzone"}
  % 
  \vspace#1.0
  \line{L'Empio tuo strale, Amore,}
  \line{È più crudo e più forte,}
  \line{Assai che quel di Morte,}
  \line{Che per Morte una volta sol si more,}
  \line{E tu col tuo colpire,}
  \line{Uccidi mille, e non si può morire,}
  \line{Dunque Amore, è men male,}
  \line{La Morte che il tuo strale.}
  

 }
} 




  