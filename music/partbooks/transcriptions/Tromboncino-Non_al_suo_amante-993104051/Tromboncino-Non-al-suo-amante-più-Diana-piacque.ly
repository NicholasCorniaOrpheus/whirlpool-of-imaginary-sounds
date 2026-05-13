\version "2.18.2"

%paper settings and other commands, like ficta
\include "../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 18)
%landscape option
\paper{
  horizontal-shift = #5
%print-page-number = #ff
}

%#(set-default-paper-size "a4" 'landscape)



%partfile
\include"Tromboncino-Non-al-suo-amante-più-Diana-piacque_parts.ly"



\header {
  composer = \markup{ \override #'(font-name . "Hultog") "Bartolomeo Tromboncino (c. 1470 - c. 1535)" }
  copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia, 2021" }
  title = \markup{ \override #'(font-name . "Hultog") "Non al suo amante piu` Diana piacque" }
subtitle = \markup{ \override #'(font-name . "Hultog") "Libro Primo de la Croce (1526)" }
%tagline = "Nicholas Cornia, 2019"
  poet = \markup{ \override #'(font-name . "Hultog") "Francesco Petrarca, Canzoniere 52 " }
  arranger =  \markup{ \override #'(font-name . "Hultog")  "Pasoti & Dorico"}
     tagline = \markup{ \epsfile #X #35 #"../Vecchie-musiche/vecchie musiche_logo1.eps"}
piece = \markup{ \override #'(font-name . "Hultog") ""}
}




\markup{
  \vspace #0.5 }


\score{
 <<
   \new Voice = "canto" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
     \set Staff.instrumentName = \tromboncino_non_al_suo_amante_piu_diana_incipit_cantus
     \set Staff.midiInstrument = #"choir aahs"
     \transpose c c{
     \tromboncino_non_al_suo_amante_piu_diana_cantus
     }
   >>
   \new Lyrics \lyricsto canto \tromboncino_non_al_suo_amante_piu_diana_lyrics_cantus_one

   \new ChoirStaff \with{
  fontSize = #-2
  \override StaffSymbol #'staff-space = #(magstep -2)}
                         <<
   \new Voice = "alto" \with{ \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \tromboncino_non_al_suo_amante_piu_diana_incipit_altus
     \set Staff.midiInstrument = #"harpsichord"
      \transpose c c{
     \tromboncino_non_al_suo_amante_piu_diana_altus
      }
   >>
   

   \new Voice = "tenore" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \tromboncino_non_al_suo_amante_piu_diana_incipit_tenor
     \set Staff.midiInstrument = #"harpsichord"
      \transpose c c{
     \tromboncino_non_al_suo_amante_piu_diana_tenor
      }
   >>
   
   
     
   \new Voice = "basso" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \tromboncino_non_al_suo_amante_piu_diana_incipit_bassus
     \set Staff.midiInstrument = #"harpsichord"
      \transpose c c{
     \tromboncino_non_al_suo_amante_piu_diana_bassus 
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
  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)

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

 
\midi{\tempo 1 = 60}
  
  
}

\markup{
\vspace #3.0  
\column{
  %Endecasillabi ottava rima? abab cbcc
  \line{\bold"Madrigale, Canzoniere 52"}
\line{Non al suo amante più Diana piacque,}
\line{Quando per tal ventura tutta \auto-footnote "ignuda," \italic "ingnuda"} 
\line{La vide in mezzo delle gelide acque,}
\line{Che a me la pastorella alpestra e cruda,}
\line{Posta a bagnar un leggiadretto velo,}
\line{Che l'aura il vago e biondo capel chiuda,}
\line{Tal che mi fece hor quand'egli arde il cielo,}
\line{Tutto tremar d'un amoroso \auto-footnote "gelo." \italic "gielo"}



}
}
