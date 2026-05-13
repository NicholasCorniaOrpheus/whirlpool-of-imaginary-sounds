\version "2.18.2"

%paper settings and other commands, like ficta
\include "../../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 16.2)
%landscape option



%#(set-default-paper-size "a4" 'landscape)

%partfile
\include "spontone-forse-e-cagion-parts.ly"
\header{
 title=\markup{ \override #'(font-name . "Hultog") "Forse e` cagion l'aurora" }
 subtitle = \markup{ \override #'(font-name . "Hultog") "De' floridi virtuosi d'Italia (1600)" }
 arranger = \markup{ \override #'(font-name . "Hultog") "Phalese" }
 poet = \markup{ \override #'(font-name . "Hultog") "Torquato Tasso (1544-1595)" }               
 composer = \markup{ \override #'(font-name . "Hultog")"Bartolomeo Spontone (1530-1592)" }
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2018"}
 %tagline ="Nicholas Cornia,2018"
   tagline = \markup{ \epsfile #X #45 #"../../../Vecchie-musiche/vecchie musiche_logo1.eps"}

}





\score{
  <<
 \new ChoirStaff<< 
 \new Voice ="cantus_one" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \spontone_forse_canto_primo
   \set Staff.midiInstrument  = #"choir aahs"
   \set Staff.instrumentName = \spontone_forse_incipit_canto_primo
 >>
 \new Lyrics \lyricsto cantus_one \spontone_forse_lyrics_canto_primo
 \new Voice ="cantus_two" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \spontone_forse_canto_secondo
   \set Staff.midiInstrument  = #"choir aahs"
   \set Staff.instrumentName = \spontone_forse_incipit_canto_secondo
 >>
 \new Lyrics \lyricsto cantus_two \spontone_forse_lyrics_canto_secondo
  \new Voice ="altus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \spontone_forse_alto
   \set Staff.midiInstrument  = #"choir aahs"
   \set Staff.instrumentName = \spontone_forse_incipit_alto
 >>
 \new Lyrics \lyricsto altus \spontone_forse_lyrics_alto
 \new Voice ="tenor" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \spontone_forse_tenore
   \set Staff.midiInstrument  = #"choir aahs"
   \set Staff.instrumentName = \spontone_forse_incipit_tenore
 >>
 \new Lyrics \lyricsto tenor \spontone_forse_lyrics_tenore
 \new Voice ="bassus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \spontone_forse_basso
   \set Staff.midiInstrument  = #"choir aahs"
   \set Staff.instrumentName = \spontone_forse_incipit_basso
 >>
 \new Lyrics \lyricsto bassus \spontone_forse_lyrics_basso

 
 >> 
 
  >>
 
 \midi{\tempo 2=80}
   \include "../../../Vecchie-musiche/layout_vecchie_musiche.ly"

 
}

\markup{
\vspace #3.0  
\column{  
  \line{\bold{Madrigale }}
  \line{ Forse è cagion l'aurora,}
  \line{ Di questo bel concento,}
  \line{ Che fan le fronde ei rami}
  \line{ e l'acque e'l vento,}
  \line{ O con si dolce modo,}
  \line{ Il Ciel Tarquinia honora,}
  \line{ E per lei de la terra s'innamora,}
  \line{ I' odo o par mi, i' odo la voce ella è pur dessa,}
  \line{ Ecco Tarquinia viene, ella è pur dessa.}
  
  }
} 



\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #2
    \override StaffGrouper.staff-staff-spacing.basic-distance = #2
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #2
\override StaffGrouper.staffgroup-staff-spacing.padding = #2
\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
  
}
  