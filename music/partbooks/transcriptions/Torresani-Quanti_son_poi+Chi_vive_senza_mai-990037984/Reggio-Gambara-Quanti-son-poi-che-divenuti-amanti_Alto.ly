ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }

#(set-global-staff-size 19.5)
#(set-default-paper-size "a4" 'landscape)

\include"../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

\include "Reggio-Gambara-Chi-vive-senza-mai-trovar-riposo_parts.ly"


\header{
 title= \markup{
   \override #'(font-name . "Hultog") 
   "Chi vive senza mai trovar riposo" } 
 subtitle = \markup{ 
   \override #'(font-name . "Hultog") 
   "Il Primo Libro de Madrigali a4 (1556)" }
 composer = \markup{ \override #'(font-name . "Hultog") "Hoste da Reggio (c. 1520 - 1569)" }
 poet = \markup{ \override #'(font-name . "Hultog") "Veronica Gambara, Rime " }
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2021" }
 %tagline ="Nicholas Cornia,2019"
 arranger =  \markup{ \override #'(font-name . "Hultog") "Gardano" }
 tagline = \markup{ \epsfile #X #25 #"../../Vecchie-musiche/vecchie musiche_logo1.eps"}
 %piece ="Transposed an x higher than original."
}







\version "2.18.2"

\score{
  <<
 \new Voice = "altus" \with {
    \consists "Ambitus_engraver"} <<
   \transpose c c{
      \omit Score.BarNumber 
       \omit Score.BarLine
     \reggio_chi_vive_senza_mai_trovar_altus
     \undo \omit Score.BarLine
     \bar"||"
   }
   \set Staff.instrumentName = #"Alto"
 >>
 \new Lyrics \lyricsto altus \reggio_chi_vive_senza_mai_trovar_lyrics_altus
  >>
 
 
 \include "../../Vecchie-musiche/layout_vecchie_musiche.ly"
 
 
} 
  