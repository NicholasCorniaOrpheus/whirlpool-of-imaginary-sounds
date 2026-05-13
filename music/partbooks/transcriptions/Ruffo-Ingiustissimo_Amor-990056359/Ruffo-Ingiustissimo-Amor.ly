\version "2.18.2"

%paper settings and other commands, like ficta
\include "../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

diatonicScale = \relative { c' d e f g a b }

#(set-global-staff-size 18)
%landscape option
\paper{
  %horizontal-shift = #7
%print-page-number = #ff
}

%#(set-default-paper-size "a4" 'landscape)


%partfile
\include"Ruffo-Ingiustissimo-Amor_parts.ly"



\header {
  composer = \markup{ \override #'(font-name . "Hultog") "Vincenzo Ruffo (c. 1508 - c. 1587)" }
  copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia, 2020" }
  title = \markup{ \override #'(font-name . "Hultog") "Ingiustissimo Amor perche' si` raro" }
subtitle = \markup{ \override #'(font-name . "Hultog") "Li Madrigali a Quattro Voci a Note Negre (1545)" }
%tagline = "Nicholas Cornia, 2019"
  poet = \markup{ \override #'(font-name . "Hultog") "Ludovico Ariosto, Orlando Furioso" }
  arranger =  \markup{ \override #'(font-name . "Hultog")  "Gardano"}
     tagline = \markup{ \epsfile #X #45 #"../Vecchie-musiche/vecchie musiche_logo1.eps"}
}




\markup{
  \vspace #0.5 }


\score{
 <<
   \new Voice = "barre_soprano" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
     \set Staff.instrumentName = \ruffo_ingiustissimo_amor_incipit_cantus
     \set Staff.midiInstrument = #"choir aahs"
     \transpose c f, {
     \ruffo_ingiustissimo_amor_cantus
     }
   >>
   \new Lyrics \lyricsto barre_soprano \ruffo_ingiustissimo_amor_lyrics_cantus
   
   \new ChoirStaff \with{
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -2)}
                         <<
   \new Voice = "barre_alto" \with{ \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \ruffo_ingiustissimo_amor_incipit_altus
     \set Staff.midiInstrument = #"harpsichord"
      \transpose c f, {
      \modalTranspose c e \diatonicScale {\ruffo_ingiustissimo_amor_altus}
      }
   >>
   

   \new Voice = "barre_tenore" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \ruffo_ingiustissimo_amor_incipit_tenor
     \set Staff.midiInstrument = #"harpsichord"
      \transpose c f, {
     \ruffo_ingiustissimo_amor_tenor
      }
   >>
   
   
     
   \new Voice = "barre_basso" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \ruffo_ingiustissimo_amor_incipit_bassus
     \set Staff.midiInstrument = #"harpsichord"
      \transpose c f, {
     \ruffo_ingiustissimo_amor_bassus 
      }
   >>
   
   >>
   
 >>
   
\layout{
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override StaffGrouper.staff-staff-spacing.basic-distance = #5
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
\override StaffGrouper.staffgroup-staff-spacing.padding = #5
  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)

  }
  \context { \Voice \override NoteHead.style = #'baroque }
   \context {
    \Staff
    \RemoveEmptyStaves
  }
  \context{
    \Voice
    \RemoveEmptyStaves
  }
  
  
}

 
\midi{\tempo 2 = 75}
  
  
}

\markup{
\vspace #3.0  
\column{
  
  \line{\bold"Orlando Furioso, Canto II ottava 1 "}
\line{Ingiustissimo Amor perché sì \auto-footnote raro "Raro: raramente.",}
\line{Corrispondenti fai nostri desiri?}
\line{Onde, perfido avvien che t'è sì caro,}
\line{Il discorde voler ch'in duo cor miri?}
\line{\auto-footnote Ir "Ir: ire, andare." non mi lasci al facil guado e chiaro,}
\line{E nel più cieco e maggior fondo tiri,}
\line{Da chi desia il mio amor tu mi richiami,}
\line{E chi m'ha in odio vuoi ch'adori ed ami.}

  
  
}
}