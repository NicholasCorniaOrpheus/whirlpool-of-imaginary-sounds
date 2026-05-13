\version "2.18.2"

%paper settings and other commands, like ficta
\include "../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 18.5)
%landscape option
\paper{
  %horizontal-shift = #7
%print-page-number = #ff
}

%#(set-default-paper-size "a4" 'landscape)



%partfile
\include "Gero-La-la-maistre-Pierre_parts.ly"

\header{
 title= \markup{ \override #'(font-name . "Hultog") "La la maistre Pierre" } 
 %here comes the name of the collection with publication date ()
 subtitle = \markup{ \override #'(font-name . "Hultog") "Il Primo Libro de Madregali a 2 (1552)" }
 composer = \markup{ \override #'(font-name . "Hultog") "Jhan Gero (fl. 1540-1555)" }
 poet = \markup{ \override #'(font-name . "Hultog") "" }
 %Additional info
 arranger =  \markup{ \override #'(font-name . "Hultog") "Gardano" }
 piece = \markup{ \override #'(font-name . "Hultog") "" }
 
 %copyright and vecchie musiche tagline
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2020" }
%please specify the path of the picture!
tagline = \markup{ \epsfile #X #35 #"../Vecchie-musiche/vecchie musiche_logo1.eps"}
 
}

\markup{ \vspace #1 }

\score{
 \new ChoirStaff<< 
 \new Voice ="cantus" \with { 
   %add voice options
   \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly"} <<
   \transpose c c{
     \gero_la_la_maistre_pierre_cantus
   }
   \set Staff.instrumentName = \gero_la_la_maistre_pierre_incipit_cantus
      \set Staff.shortInstrumentName = #"C."

    \set Staff.midiInstrument =#"church organ"

 >>
 \new Lyrics \lyricsto cantus \gero_la_la_maistre_pierre_lyrics_cantus
  
  
 \new Voice ="tenor" \with {
    %add voice options
   \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly"}
  <<
  \transpose c c{
     \gero_la_la_maistre_pierre_tenor
   }
   \set Staff.instrumentName = \gero_la_la_maistre_pierre_incipit_tenor
      \set Staff.shortInstrumentName = #"T."

      \set Staff.midiInstrument =#"church organ"

 >>
 \new Lyrics \lyricsto tenor \gero_la_la_maistre_pierre_lyrics_tenor
 

 
 >> 
 
 \midi{\tempo 2 = 120}
 
%layout options
\include "../Vecchie-musiche/layout_vecchie_musiche.ly"
  
 
}

%Here comes the text of the music

\markup{
\vspace #3.0  
\column{ 
  \line{La la maistre Pierre,}
  \line{La la buvons don, }
  \line{En revenant de santterre,}
  \line{La la maistre Pierre,}
  \line{Je m'assis sur une pierre,}
  \line{Aupres de moy ung flascon,}
  \line{La la maistre Pierre,}
  \line{La la bouvons don pour eviter le cattere,}
  \line{La la maistre Pierre,}
  \line{A ce flascon feist la guerre,}
  \line{En mengiant dung gras giambon,}
  \line{La la maistre Pierre,}
  \line{La la buvons don.}
  
  
  }
        
 }





  