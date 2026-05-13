ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }

#(set-global-staff-size 21.0767485433)
#(set-default-paper-size "a4" 'landscape)


\include "Anonymous-Colonna-O-viver-mio-noioso_parts.ly"

\header{
 title="O viver mio noioso"
 subtitle = "De' diversi autori, quarto libro a quattro voci (1554)"
 composer = "Anonymous"
 poet = "Vittoria Colonna (1492-1547)"
 %copyright = "Nicholas Cornia,2019"
 tagline ="Nicholas Cornia,2019"
%piece ="Transposed an fifth higher than original."
}

\paper {
 top-system-spacing #'basic-distance = #10
  system-system-spacing #'basic-distance = #15
  last-bottom-spacing #'basic-distance = #10
  
}





\version "2.18.2"

\score{
  <<
 \new Voice = "tenor" \with {
    \consists "Ambitus_engraver"} <<
   \transpose c c{
     \colonnaoviver_tenor
   }
   \set Staff.instrumentName = #"Tenor"
 >>
 \new Lyrics \lyricsto tenor \colonnaoviver_lyrics_tenor
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
  