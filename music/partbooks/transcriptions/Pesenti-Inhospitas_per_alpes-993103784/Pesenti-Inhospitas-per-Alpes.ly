\version "2.18.2"

%paper settings and other commands, like ficta
\include "../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 18)
%landscape option
\paper{
  horizontal-shift = #4
%print-page-number = #ff
}

%#(set-default-paper-size "a4" 'landscape)



%partfile
\include"Pesenti-Inhospitas-per-Alpes_parts.ly"



\header {
  composer = \markup{ \override #'(font-name . "Hultog") "Michele Pesenti (c. 1470 - after 1524) " }
  copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia, 2021" }
  title = \markup{ \override #'(font-name . "Hultog") "Inhospitas per Alpes" }
subtitle = \markup{ \override #'(font-name . "Hultog") "Frottole libro I (1504)" }
%tagline = "Nicholas Cornia, 2019"
  poet = \markup{ \override #'(font-name . "Hultog") "Antonio Tebaldeo" }
  arranger =  \markup{ \override #'(font-name . "Hultog")  "Petrucci"}
     tagline = \markup{ \epsfile #X #35 #"../Vecchie-musiche/vecchie musiche_logo1.eps"}
piece = \markup{ \override #'(font-name . "Hultog") ""}
}




\markup{
  \vspace #0.5 }


\score{
 <<
   \new Voice = "canto" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
     \set Staff.instrumentName = \pesenti_inhospitas_per_alpes_incipit_cantus
     \set Staff.midiInstrument = #"choir aahs"
     \transpose c c{
     \pesenti_inhospitas_per_alpes_cantus
     }
   >>
   \new Lyrics \lyricsto canto \pesenti_inhospitas_per_alpes_lyrics_cantus_one
      \new Lyrics \lyricsto canto \pesenti_inhospitas_per_alpes_lyrics_cantus_two
\new Lyrics \lyricsto canto \pesenti_inhospitas_per_alpes_lyrics_cantus_three
\new Lyrics \lyricsto canto \pesenti_inhospitas_per_alpes_lyrics_cantus_four
   
   \new ChoirStaff \with{
  fontSize = #-2
  \override StaffSymbol #'staff-space = #(magstep -2)}
                         <<
   \new Voice = "alto" \with{ \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \pesenti_inhospitas_per_alpes_incipit_altus
     \set Staff.midiInstrument = #"harpsichord"
      \transpose c c{
     \pesenti_inhospitas_per_alpes_altus
      }
   >>
   

   \new Voice = "tenore" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \pesenti_inhospitas_per_alpes_incipit_tenor
     \set Staff.midiInstrument = #"harpsichord"
      \transpose c c{
     \pesenti_inhospitas_per_alpes_tenor
      }
   >>
   
   
     
   \new Voice = "basso" \with{  \include"../Vecchie-musiche/voice_options_vecchie_musiche.ly" } <<
    \set Staff.instrumentName = \pesenti_inhospitas_per_alpes_incipit_bassus
     \set Staff.midiInstrument = #"harpsichord"
      \transpose c c{
     \pesenti_inhospitas_per_alpes_bassus 
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
  
  \line{\bold"Ode Latina"}
\line{Inhospitas per alpes,}
\line{Per horridos recessus,}
\line{Merenti pede fessus,}
\line{Evagabor.}
\vspace #1.0
\line{Feras ibi as pecabor,}
\line{Movebo aves volantis,}
\line{Sylve frondicomantis,}
\line{Ad cacumen.}
\vspace #1.0
%3
%4
\line{Volens pericla adibo,}
\line{Ulyxis Herculisque,}
\line{Nam mors grata levisque,}
\line{Et apta victo.}
}
\hspace #10
\column{
\vspace #1.0
\line{Adeste derelicto,}
\line{Lupa, Ursa, Linx, Leena,}
\line{Alce, Tygris, Hiena,}
\line{Dorcas, Hystrix.}
%7
\vspace #1.0
\line{\auto-footnote "Celen, Aello," "Harpies of classical mythology." acutas,}
\line{Pedis rapatioris,}
\line{Iras ferte et odoris,}
\line{Huc mephytim.}
%9
%10
%11
%12
\vspace #1.0
\line{At at magis remote,}
\line{Plage ocyus petende,}
\line{Trans te, Phasi, tremende,}
\line{Et arva Rheni.}

}
}