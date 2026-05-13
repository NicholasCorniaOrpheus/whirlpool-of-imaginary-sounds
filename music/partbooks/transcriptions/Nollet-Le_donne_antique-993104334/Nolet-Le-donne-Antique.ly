\version "2.18.2"

\include "../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 18)
%landscape option
\paper{
  %horizontal-shift = #8
%print-page-number = #ff
}

%#(set-default-paper-size "a4" 'landscape)


\include "Nolet-Le-donne-antique_parts.ly"

\header{
 title= \markup{ \override #'(font-name . "Hultog")"Le donne Antique"}
 subtitle = \markup{ \override #'(font-name . "Hultog") "Primo libro a cinque voci de' diversi autori (1542)"}
 composer = \markup{ \override #'(font-name . "Hultog") "Nolet (fl. 1538-46)"}
 arranger = \markup{ \override #'(font-name . "Hultog") "Gardano"}
 poet = \markup{ \override #'(font-name . "Hultog") "Ludovico Ariosto," \italic "Orlando Furioso" }
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2019"}
 %tagline ="Nicholas Cornia,2019"
   tagline = \markup{ \epsfile #X #35 #"../../Vecchie-musiche/vecchie musiche_logo1.eps"} 

 %piece ="Transposed a second higher than original."
}


\score{
 \new ChoirStaff<< 
 \new Voice ="cantus" \with {
    \include "../../Vecchie-musiche/voice_options_vecchie_musiche.ly"} <<
   \transpose c c{
     \nolet_donne_cantus
   }
   \set Staff.instrumentName = \nolet_donne_incipit_cantus
      \set Staff.shortInstrumentName = #"C."

    \set Staff.midiInstrument =#"church organ"

 >>
 \new Lyrics \lyricsto cantus \nolet_donne_lyrics_cantus
  \new Voice ="altus" \with {
    \consists "Ambitus_engraver"} <<
   \transpose c c{
     \nolet_donne_altus
   }
   \set Staff.instrumentName = \nolet_donne_incipit_altus
      \set Staff.shortInstrumentName = #"A."

   \set Staff.midiInstrument =#"church organ"
>>
 \new Lyrics \lyricsto altus \nolet_donne_lyrics_altus
 
\new Voice ="quintus" \with {
    \consists "Ambitus_engraver"} <<
  \transpose c c{
     \nolet_donne_quintus
   }
   \set Staff.instrumentName = \nolet_donne_incipit_quintus
      \set Staff.shortInstrumentName = #"Q."

      \set Staff.midiInstrument =#"church organ"

 >>
 \new Lyrics \lyricsto quintus \nolet_donne_lyrics_quintus 
 
 
 \new Voice ="tenor" \with {
    \consists "Ambitus_engraver"} <<
  \transpose c c{
     \nolet_donne_tenor
   }
   \set Staff.instrumentName = \nolet_donne_incipit_tenor
      \set Staff.shortInstrumentName = #"T."

      \set Staff.midiInstrument =#"church organ"

 >>
 \new Lyrics \lyricsto tenor \nolet_donne_lyrics_tenor
 \new Voice ="bassus" \with {
    \consists "Ambitus_engraver"} <<
   \transpose c c{
     \nolet_donne_bassus
   }
   \set Staff.instrumentName = \nolet_donne_incipit_bassus
   \set Staff.shortInstrumentName = #"B."
   \set Staff.midiInstrument =#"church organ"
 >>
 \new Lyrics \lyricsto bassus \nolet_donne_lyrics_bassus

 
 >> 
 
 \midi{\tempo 2 = 240}
 
 
 
 
\include"../../Vecchie-musiche/layout_vecchie_musiche.ly" 
 
 
}

\markup{
\vspace #3.0  
\column{ 
  \line{\bold"Orlando Furioso Canto XX, ottava 1"}
  \line{Le donne antique hanno mirabil cose,}
\line{Fatto ne l’arme e ne le sacre muse,}
\line{E di lor opre belle e gloriose,}
\line{Gran lume in tutto il mondo si diffuse,}
\line{\auto-footnote Arpalice "Arpalice is replaced by Apollonia in the madrigal print." e Camilla son famose,}
\line{Perché in battaglia erano esperte ed use,}
\line{\auto-footnote Safo "Saffo e Corinna is replaced by l'altre sorelle in the madrigal print." e Corinna, perché furon dotte,}
\line{Splendono illustri, e non veggon mai notte.}
  
 }
} 




  