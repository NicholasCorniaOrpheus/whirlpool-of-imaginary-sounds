%ficta = { \once \set suggestAccidentals = ##t }

%mens ={ \override Staff.NoteHead.style = #'baroque }

%endmens ={ \revert Staff.NoteHead.style }

\include "../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"


#(set-global-staff-size 18)
%landscape option
\paper{
  %horizontal-shift = #8
%print-page-number = #ff
}

%#(set-default-paper-size "a4" 'landscape)



\include "Reggio-Gambara-Quanti-son-poi-che-divenuti-amanti_parts.ly"

\header{
 title= \markup{
   \override #'(font-name . "Hultog") 
   "Quanti son poi che divenuti amanti" } 
 subtitle = \markup{ 
   \override #'(font-name . "Hultog") 
   "Il Primo Libro de Madrigali a4 (1556)" }
 composer = \markup{ \override #'(font-name . "Hultog") "Hoste da Reggio (c. 1520 - 1569)" }
 poet = \markup{ \override #'(font-name . "Hultog") "Veronica Gambara, Rime " }
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2021" }
 %tagline ="Nicholas Cornia,2019"
 arranger =  \markup{ \override #'(font-name . "Hultog") "Gardano" }
 tagline = \markup{ \epsfile #X #35 #"../../Vecchie-musiche/vecchie musiche_logo1.eps"}
 %piece ="Transposed an x higher than original."
}





\version "2.18.2"



\score{

  \new ChoirStaff<< 
 \new Voice ="cantus" \with {
    \include "../../Vecchie-musiche/voice_options_vecchie_musiche.ly"} 
 <<
   \transpose c c{
     \reggio_quanti_son_poi_che_divenuti_amanti_cantus
   }
   %\set Staff.instrumentName = #"Cantus"
   \set Staff.instrumentName = \reggio_quanti_son_poi_che_divenuti_amanti_incipit_cantus
      \set Staff.shortInstrumentName = #"C."

    \set Staff.midiInstrument =#"choir aahs"

 >>
 \new Lyrics \lyricsto cantus \reggio_quanti_son_poi_che_divenuti_amanti_lyrics_cantus
  \new Voice ="altus" \with{  \include"../../Vecchie-musiche/voice_options_vecchie_musiche.ly" } 
  <<
   \transpose c c{
     \reggio_quanti_son_poi_che_divenuti_amanti_altus
   }
   \set Staff.instrumentName = \reggio_quanti_son_poi_che_divenuti_amanti_incipit_altus
      \set Staff.shortInstrumentName = #"A."

   \set Staff.midiInstrument =#"choir aahs"
>>
 \new Lyrics \lyricsto altus \reggio_quanti_son_poi_che_divenuti_amanti_lyrics_altus
 \new Voice ="tenor" \with{  \include"../../Vecchie-musiche/voice_options_vecchie_musiche.ly" }
 <<
  \transpose c c{
     \reggio_quanti_son_poi_che_divenuti_amanti_tenor
   }
   %\set Staff.instrumentName = #"Tenor"
   \set Staff.instrumentName = \reggio_quanti_son_poi_che_divenuti_amanti_incipit_tenor
      \set Staff.shortInstrumentName = #"T."

      \set Staff.midiInstrument =#"choir aahs"

 >>
 \new Lyrics \lyricsto tenor \reggio_quanti_son_poi_che_divenuti_amanti_lyrics_tenor
 \new Voice ="bassus" \with{  \include"../../Vecchie-musiche/voice_options_vecchie_musiche.ly" } 
 <<
   \transpose c c{
     \reggio_quanti_son_poi_che_divenuti_amanti_bassus
   }
   %\set Staff.instrumentName = #"Bassus"
   \set Staff.instrumentName = \reggio_quanti_son_poi_che_divenuti_amanti_incipit_bassus
   \set Staff.shortInstrumentName = #"B."
   \set Staff.midiInstrument =#"choir aahs"
 >>
 \new Lyrics \lyricsto bassus \reggio_quanti_son_poi_che_divenuti_amanti_lyrics_bassus

 
 >> 
 
 \midi{\tempo 2 = 100}
 
 
 
 
\include "../../Vecchie-musiche/layout_vecchie_musiche.ly" 
 
 
}

\markup{
\vspace #3.0  
\column{
  \line{\bold"Prima Parte"}
  \line{Quanti son poi che divenuti amanti,}
 \line{       Di duoi begl'occhi e d'un leggiadro viso,}
 \line{       Si pascon sol di dolorosi pianti,}
 \line{       Da se stessi tenend'il cor diviso,}
 \line{       Né gioia né piacer sono bastanti,}
 \line{       trarli del petto se non finto riso,}
 \line{       Et se lieti talor si mostran fuori,}
\line{        Hanno per un piacer mille dolori.}
  
  
  
}
\hspace #20
\column{
  \line{\bold"Seconda Parte"}
  \vspace #1.0
  \line{Chi vive senza mai trovar riposo,}
  \line{Lontano dall'amata e dolce vista,}
  \line{Che a se stesso divien grave e noioso,}
  \line{Sol per un sguardo o una parola trista,}
  \line{Chi da un novo rival fatto geloso,}
  \line{Quasi al par del morir si duole e attrista,}
  \line{Chi si consuma in altre varie pene,}
  \line{Più spesso assai che le minute arene}
}

} 




  