\version "2.18.2"

%paper settings and other commands, like ficta
\include "../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 16.5)
%landscape option

%#(set-default-paper-size "a4" 'landscape)



%partfile
\include "Festa-Venite-amanti_parts.ly"

\header{
 title= \markup{ \override #'(font-name . "Hultog") "Venite amanti insieme" } 
 %here comes the name of the collection with publication date ()
 subtitle = \markup{ \override #'(font-name . "Hultog") "Primo libro dei Madrigali a tre voci (1556)" }
 composer = \markup{ \override #'(font-name . "Hultog") "Costanzo Festa (1490-1545)" }
 poet = \markup{ \override #'(font-name . "Hultog") "Angelo Poliziano (1454-1497)" }
 %Additional info
 arranger = \markup{ \override #'(font-name . "Hultog") "Gardano" }
 piece = \markup{ \override #'(font-name . "Hultog") "" }
 
 %copyright and vecchie musiche tagline
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2019" }
%please specify the path of the picture!
tagline = \markup{ \epsfile #X #45 #"../Vecchie-musiche/vecchie musiche_logo1.eps"}
 
}

\markup{ \vspace #1 }

\score{
 \new ChoirStaff<< 
 \new Voice ="cantus" \with { 
   %add voice options
   \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly"} <<
   \transpose c c{
     \festa_venite_cantus
   }
   \set Staff.instrumentName = \festa_venite_incipit_cantus
      \set Staff.shortInstrumentName = #"C."

    \set Staff.midiInstrument =#"choir aahs"

 >>
 \new Lyrics \lyricsto cantus \festa_venite_lyrics_cantus

 \new Voice ="tenor" \with {
    %add voice options
   \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly"}
  <<
  \transpose c c{
     \festa_venite_tenor
   }
   \set Staff.instrumentName = \festa_venite_incipit_tenor
      \set Staff.shortInstrumentName = #"T."

      \set Staff.midiInstrument =#"choir aahs"

 >>
 \new Lyrics \lyricsto tenor \festa_venite_lyrics_tenor
 \new Voice ="bassus" \with {
    %add voice options
   \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly"} <<
   \transpose c c{
     \festa_venite_bassus
   }
   \set Staff.instrumentName = \festa_venite_incipit_bassus
   \set Staff.shortInstrumentName = #"B."
   \set Staff.midiInstrument =#"choir aahs"
 >>
 \new Lyrics \lyricsto bassus \festa_venite_lyrics_bassus

 
 >> 
 
 \midi{\tempo 2 = 120 }
 
%layout options
\include "../Vecchie-musiche/layout_vecchie_musiche.ly"
  
 
}

%Here comes the text of the music

 \markup{
   \vspace #3.0  
\column{ 
  \line{\bold"Madrigale in ottava rima"}
  \line{Venite amanti insieme a pinager forte,}
  \line{sopr'al mio corpo morto stes'in terra,}
  \line{E(t) vedrete la mia crudel sorte,}
  \line{E quant'è tristo el fin della mia guerra,}
  \line{Per tropp'amare io son condotto a morte,}
  \line{Tristo colui ch'Amor crudel afferra,}
  \line{Quest'è del servir suo sola mercede,}
  \line{\auto-footnote E(t) \italic"Other sources of the poetry suggestes a Che instead of a Et. E` as verb is also possible"
        mortal cosa amar con troppa fede,}
  
  
}
 }




  