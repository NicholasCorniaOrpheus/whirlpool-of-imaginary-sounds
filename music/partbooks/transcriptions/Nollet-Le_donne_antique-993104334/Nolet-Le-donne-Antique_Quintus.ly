ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }

#(set-global-staff-size 18.9767485433)
#(set-default-paper-size "a4" 'landscape)


\include "Nolet-Le-donne-antique_parts.ly"

\header{
 title="Le donne Antique"
 subtitle = "Primo libro a cinque voci de' diversi autori (1542)"
 composer = "Nolet (fl. 1538-46)"
 arranger = "Gardano"
 poet = \markup { Ludovico Ariosto, \italic "Orlando Furioso" }
 %poet = " Tommaso d'Aquino"
 %copyright = "Nicholas Cornia,2019"
 tagline ="Nicholas Cornia,2019"
 %piece ="Transposed a fifth higher than original."
}

\paper {
 top-system-spacing #'basic-distance = #5
  system-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #5
  
}





\version "2.18.2"

\score{
  <<
 \new Voice = "quintus" \with {
    \consists "Ambitus_engraver"} <<
   \transpose c c{
     \noletdonne_quintus
   }
   \set Staff.instrumentName = #"Quintus"
 >>
 \new Lyrics \lyricsto quintus \noletdonne_lyrics_quintus
 
  >>
 \layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #6
    \override StaffGrouper.staff-staff-spacing.basic-distance = #6
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #6
\override StaffGrouper.staffgroup-staff-spacing.padding = #6
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
 
 
} 
  