\version "2.18.2"

%paper settings and other commands, like ficta
\include "../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 18)
%landscape option
\paper{
  %horizontal-shift = #8
%print-page-number = #ff
}

%#(set-default-paper-size "a4" 'landscape)



%partfile
\include"Marenzio-Le-dubbie-spemi-il-pianto-e-l-van-dolore_parts.ly"



\header {
  composer = \markup{ \override #'(font-name . "Hultog") "Luca Marenzio (c.1553 - 1599)" }
  copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia, 2022" }
  title = \markup{ \override #'(font-name . "Hultog") "Le dubbie spemi, il pianto e'l van dolore" }
subtitle = \markup{ \override #'(font-name . "Hultog") "Primo Libro Madrigali Spirituali (1585)" }
%tagline = "Nicholas Cornia, 2019"
  poet = \markup{ \override #'(font-name . "Hultog") "" }
  arranger =  \markup{ \override #'(font-name . "Hultog")  "Scotto"}
     tagline = \markup{ \epsfile #X #35 #"../Vecchie-musiche/vecchie musiche_logo1.eps"}
piece = \markup{ \override #'(font-name . "Hultog")  ""}
}




\markup{
  \vspace #0.5 }


\score{
 <<
   \new ChoirStaff <<
    
     
   \new Voice = "canto" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
     \set Staff.instrumentName = \marenzio_le_dubbie_spemi_incipit_cantus
     \set Staff.shortInstrumentName = "C."
     \set Staff.midiInstrument = #"choir aahs"
     \transpose c c{
        
     \marenzio_le_dubbie_spemi_cantus
     }
   >>
   \new Lyrics \lyricsto canto \marenzio_le_dubbie_spemi_lyrics_cantus
   
    

   \new Voice = "alto" \with{ \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \marenzio_le_dubbie_spemi_incipit_altus
    \set Staff.shortInstrumentName = "A."
    \set Staff.midiInstrument = #"choir aahs"
      \transpose c c{
     \marenzio_le_dubbie_spemi_altus
      }
   >>
   \new Lyrics \lyricsto alto \marenzio_le_dubbie_spemi_lyrics_altus
   

   \new Voice = "tenore" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \marenzio_le_dubbie_spemi_incipit_tenor
    \set Staff.shortInstrumentName = "T."
    \set Staff.midiInstrument = #"choir aahs"
      \transpose c c{
     \marenzio_le_dubbie_spemi_tenor
      }
   >>
   \new Lyrics \lyricsto tenore \marenzio_le_dubbie_spemi_lyrics_tenor
   
   \new Voice = "quinto" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
     \set Staff.instrumentName = \marenzio_le_dubbie_spemi_incipit_quintus
     \set Staff.shortInstrumentName = "Q."
     \set Staff.midiInstrument = #"choir aahs"
     \transpose c c{
        
     \marenzio_le_dubbie_spemi_quintus
     }
   >>
   \new Lyrics \lyricsto quinto \marenzio_le_dubbie_spemi_lyrics_quintus
   
     
   \new Voice = "basso" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \marenzio_le_dubbie_spemi_incipit_bassus
     \set Staff.shortInstrumentName = "B."
     \set Staff.midiInstrument = #"choir aahs"
      \transpose c c{
     \marenzio_le_dubbie_spemi_bassus 
      }
   >>
   \new Lyrics \lyricsto basso \marenzio_le_dubbie_spemi_lyrics_bassus
   >>
   
 >>
   \include "../Vecchie-musiche/layout_vecchie_musiche.ly"


 
\midi{\tempo 2 = 70 }
  
  
}

\markup{
\vspace #3.0  
\column{
 
  \line{\bold"Prima Parte"}
  %endecassilabi abba (sonetto?)
  \vspace #1.0
  \line{Le dubbie spemi, il pianto e il van dolore,}
\line{I pensier folli e le delire imprese,}
\line{E le querele indarno al vento spese,}
\line{M’hanno a me tolto e posto in lungo errore,}
\line{Ma tu del Cielo eterno, alto motore,}
\line{La cui pietà percorre a nostre offese,}
\line{Per quel non finto amor ch’in noi t’accese,}
\line{Drizza a buon corso il desviato core.}
}
\hspace #15
\column{
  \line{\bold"Seconda Parte"}
  %endecassilabi abab (sonetto)
  \vspace #1.0
  \line{Si che s’al cominciar di tanti affanni,}
\line{Prese cammin ch’il passo al ciel li serra,}
\line{Almen si volga a te ne’ miglior anni,}
\line{Signor com’oggi flagellato in terra,}
\line{Col sangue ristorasti i nostri danni,}
\line{Porgi omai pace alla mia lunga guerra.}

  
}
  
  

  


}

