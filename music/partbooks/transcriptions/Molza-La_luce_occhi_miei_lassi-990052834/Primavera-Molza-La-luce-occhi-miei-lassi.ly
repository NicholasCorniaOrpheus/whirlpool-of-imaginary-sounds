\version "2.18.2"

%paper settings and other commands, like ficta
\include "../../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 16.8)
%landscape option



%#(set-default-paper-size "a4" 'landscape)

%partfile
\include"primavera-luce-parts.ly"

\header{
 title=\markup{ \override #'(font-name . "Hultog") "La luce occhi miei lassi" }
 composer = \markup{ \override #'(font-name . "Hultog") "Giovan Leonardo Primavera (c.1540-1585)" }
 subtitle = \markup{ \override #'(font-name . "Hultog") "I Frutti di Giovan Leonardo Primavera, Libro Quarto (1573)" }
 poet =  \markup{ \override #'(font-name . "Hultog") "Tarquinia Molza (1542-1617)" }
  arranger =  \markup{ \override #'(font-name . "Hultog") "Scotto" }

 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2019" }
 %tagline ="Nicholas Cornia,2019"
  tagline = \markup{ \epsfile #X #45 #"../../../Vecchie-musiche/vecchie musiche_logo1.eps"}

}





\score{
  <<
 \new ChoirStaff<< 
 \new Voice ="cantus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \primavera_luce_canto_primo
   \set Staff.instrumentName = \primavera_luce_incipit_canto_primo
   \set Staff.midiInstrument  = #"choir aahs"
 >>
 \new Lyrics \lyricsto cantus \primavera_luce_lyrics_canto_primo
 \new Voice ="quinto" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \primavera_luce_canto_secondo

   \set Staff.instrumentName = \primavera_luce_incipit_canto_secondo
   \set Staff.midiInstrument  = #"choir aahs"
 >>
 \new Lyrics \lyricsto quinto \primavera_luce_lyrics_canto_secondo
  \new Voice ="altus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \primavera_luce_alto
   \set Staff.instrumentName = \primavera_luce_incipit_alto
   \set Staff.midiInstrument  = #"choir aahs"
 >>
 \new Lyrics \lyricsto altus \primavera_luce_lyrics_alto
 \new Voice ="tenor" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \primavera_luce_tenore
   \set Staff.instrumentName = \primavera_luce_incipit_tenore
   \set Staff.midiInstrument  = #"choir aahs"
 >>
 \new Lyrics \lyricsto tenor \primavera_luce_lyrics_tenore
 \new Voice ="bassus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \primavera_luce_basso
   \set Staff.instrumentName = \primavera_luce_incipit_basso
   \set Staff.midiInstrument  = #"choir aahs"
 >>
 \new Lyrics \lyricsto bassus \primavera_luce_lyrics_basso

 
 >>
 
  >> 
  \include "../../../Vecchie-musiche/layout_vecchie_musiche.ly"
    
 \midi{\tempo 1=60}
}

\markup{
  \vspace #3.0
  \column{
    \line{\bold"Madrigale"}
\line{La luce occhi miei lassi,}
\line{che dava luce a voi fa giorno ad altri,}
\line{Oscura notte a noi,}
\line{Ond'io sovente canto,}
\line{Così va,}
\line{Ch'in altrui pon fede tanto.}
  }
} 
    
  

 


