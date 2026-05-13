\version "2.18.2"

%paper settings and other commands, like ficta
\include "../../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 16)
%landscape option

%#(set-default-paper-size "a4" 'landscape)



%partfile
\include"Aleotti-Dicesti-Anima-mia_parts.ly"



\header {
  composer = \markup{ \override #'(font-name . "Hultog") "Vittoria Aleotti (c. 1575- after 1620)" }
  copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia, 2019" }
  title = \markup{ \override #'(font-name . "Hultog") "Dicesti Anima mia" }
subtitle = \markup{ \override #'(font-name . "Hultog") "Girlanda de' Madrigali a quattro voci (1593)" }
%tagline = "Nicholas Cornia, 2019"
 % poet = ""
 % arranger = "Nicholas Cornia"
     tagline = \markup{ \epsfile #X #45 #"../../../Vecchie-musiche/vecchie musiche_logo1.eps"}

}



\markup{
  \vspace #0.5 }


\score{
 <<
   \new Voice = "aleotti_soprano" \with{  \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
     \set Staff.instrumentName = \aleotti_dicesti_incipit_soprano
     \set Staff.midiInstrument = #"choir aahs"
     \aleotti_dicesti_soprano
   >>
   \new Lyrics \lyricsto aleotti_soprano \aleotti_dicesti_lyrics_soprano
   
   \new ChoirStaff \with{
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -2)}
                         <<
   \new Voice = "aleotti_alto" \with{ \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \aleotti_dicesti_incipit_alto
     \set Staff.midiInstrument = #"guitar harmonics"
     \aleotti_dicesti_alto
     
   >>
   

   \new Voice = "aleotti_tenore" \with{  \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \aleotti_dicesti_incipit_tenore
     \set Staff.midiInstrument = #"guitar harmonics"
     \aleotti_dicesti_tenore
     
   >>
   
   
     
   \new Voice = "aleotti_basso" \with{  \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \aleotti_dicesti_incipit_basso
     \set Staff.midiInstrument = #"guitar harmonics"
     \aleotti_dicesti_basso 
     
   >>
   
   >>
   
 >>
   
\layout{
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #2
    \override StaffGrouper.staff-staff-spacing.basic-distance = #2
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #7
\override StaffGrouper.staffgroup-staff-spacing.padding = #7
  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)

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
  %6-7-11 Versi sciolti a-b-c-b-d-d-a-e-e
  \line{\bold"Madrigale"}
  \line{ Dicesti anima mia}
  \line{Ch'ardi per me d'Amore}
\line{        Sol con le labbra}
\line{        O col profondo core}
\line{        Ah non sia mai ch'io il creda}
\line{        Finché dell'amor tuo segno non veda}
\line{        Vuoi che sicuro io sia}
\line{        Che siano i detti tuoi fidi e veraci}
\line{        Sian testimoni e guiramenti i baci.}

  
  
}
}