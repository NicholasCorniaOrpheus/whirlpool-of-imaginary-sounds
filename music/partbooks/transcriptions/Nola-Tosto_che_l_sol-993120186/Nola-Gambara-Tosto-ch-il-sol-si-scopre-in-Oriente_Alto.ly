ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }

#(set-global-staff-size 19.5)
#(set-default-paper-size "a4" 'landscape)

\include"../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

\include "Nola-Gambara-Tosto-ch-il-sol-si-scopre-in-Oriente_parts.ly"


\header{
 title= \markup{
   \override #'(font-name . "Hultog") 
   "Tosto ch'il sol si scopre in Oriente" } 
 subtitle = \markup{ 
   \override #'(font-name . "Hultog") 
   "Madregali Ariosi a Quattro Voci (1565)" }
 composer = \markup{ \override #'(font-name . "Hultog") "Giovanni Domenico da Nola (c. 1520 - 1592)" }
 poet = \markup{ \override #'(font-name . "Hultog") "Veronica Gambara " }
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
     \nola_tosto_chil_sol_altus
     \undo \omit Score.BarLine
     \bar"||"
   }
   \set Staff.instrumentName = #"Alto"
 >>
 \new Lyrics \lyricsto altus \nola_tosto_chil_sol_lyrics_altus
  >>
 
 
 \include "../../Vecchie-musiche/layout_vecchie_musiche.ly"
 
 
} 
  