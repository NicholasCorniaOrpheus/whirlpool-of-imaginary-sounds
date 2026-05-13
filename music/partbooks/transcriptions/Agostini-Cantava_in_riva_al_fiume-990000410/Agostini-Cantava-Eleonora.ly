\version "2.18.2"

%paper settings and other commands, like ficta
\include "../../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 17)
%landscape option

%#(set-default-paper-size "a4" 'landscape)



%partfile

\include"Agostini-Cantava-Eleonora_parts.ly"

\header{ 
    title = \markup{ \override #'(font-name . "Hultog") "Cantava in riva al fiume Tirsi" }
    subtitle = \markup{ \override #'(font-name . "Hultog")"Il Nuovo Echo a cinque voci (1583)" }
    %piece = "1. Cantava in riva al fiume Tirsi "
    composer = \markup{ \override #'(font-name . "Hultog") "Lodovico Agostini (1534-1590)" }
    poet = \markup{ \override #'(font-name . "Hultog") "Torquato Tasso (1544-1595)"  }
    copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia, 2019" }
    %tagline = "Nicholas Cornia, 2019"
    tagline = \markup{ \epsfile #X #45 #"../../../Vecchie-musiche/vecchie musiche_logo1.eps"}

  }


\score{
  
   
 
<< 
 \new ChoirStaff<<
   \new Voice ="soprano_primo" \with {
     \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \agostini_cantava_canto_primo
   \set Staff.shortInstrumentName = "C"
   \set Staff.midiInstrument =#"choir aahs"
   \set Staff.instrumentName = \agostini_cantava_incipit_canto_primo
 >>
 
 \new Lyrics \lyricsto soprano_primo \agostini_cantava_lyrics_canto_primo
 
   \new Voice ="soprano_secondo" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \agostini_cantava_canto_secondo
   \set Staff.shortInstrumentName = "Q"
   \set Staff.midiInstrument =#"choir aahs"
   \set Staff.instrumentName = \agostini_cantava_incipit_canto_secondo
 >>
   \new Lyrics \lyricsto soprano_secondo \agostini_cantava_lyrics_canto_secondo
   
    \new Voice ="alto" \with {
    \consists "Ambitus_engraver"}<<
   \agostini_cantava_alto
   \set Staff.shortInstrumentName = "A"
   \set Staff.midiInstrument =#"choir aahs"
   \set Staff.instrumentName = \agostini_cantava_incipit_alto
 >>
   \new Lyrics \lyricsto alto \agostini_cantava_lyrics_alto
   
  \new Voice ="tenore" \with {
    \consists "Ambitus_engraver"}<<
   \agostini_cantava_tenore
   \set Staff.shortInstrumentName = "T"
   \set Staff.midiInstrument =#"choir aahs"
   \set Staff.instrumentName = \agostini_cantava_incipit_tenore
 >>
   \new Lyrics \lyricsto tenore \agostini_cantava_lyrics_tenore 
   
   \new Voice ="basso" \with {
    \consists "Ambitus_engraver"}<<
   \agostini_cantava_basso
   \set Staff.midiInstrument =#"choir aahs"
   \set Staff.shortInstrumentName = "B"
   \set Staff.instrumentName = \agostini_cantava_incipit_basso
 >>
   \new Lyrics \lyricsto basso \agostini_cantava_lyrics_basso
   
 >>


>>
\include "../../../Vecchie-musiche/layout_vecchie_musiche.ly"

\midi{\tempo 1 =45} 
}



\markup{
\vspace #3.0  
\column{  
  \line{\bold{Rime d'Amore (346) }}
  %7
  \line{Cantava in riva al fiume }
  %6/7
  \line{Tirsi \auto-footnote d'Eleonora "Riferimento ad Eleonora d'Este?",}
  %11
  \line{E rispondean le selve e l'onde honora,}
  %11
  \line{E parea mormorando} 
 
  %totale 9+8=17?
  \line{ Dirl'ora: hora ch'appare}
  
  \line{l'Aurora par che lieta esca dal mare:}
  %7
  \line{Hor chi l'honora amando? }
  %6/7
  \line{E l'acque insieme ei rami,}
  %11
  \line{ Hor chi fia, che l'honori,}
  %5
  \line{e che non l'ami?}
  
  }
} 

