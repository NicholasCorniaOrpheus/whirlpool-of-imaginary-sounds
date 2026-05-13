\version "2.18.2"

%paper settings and other commands, like ficta
\include "../../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 17)
%landscape option

%#(set-default-paper-size "a4" 'landscape)

%partfile
\include"ingegneri-mentre-parts.ly"

\header{
 title= \markup{ \override #'(font-name . "Hultog") "Mentre tu canti io canto" }
 subtitle = \markup{ \override #'(font-name . "Hultog") "Secondo libro dei Madrigali a quattro voci (1579)" }
 composer = \markup{ \override #'(font-name . "Hultog") "Marc'Antonio Ingegneri (c. 1535-1592)" }
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2019" }
  arranger = \markup{ \override #'(font-name . "Hultog") "Gardano" }
 %tagline ="Nicholas Cornia,2019"
 %piece = \markup{ \override #'(font-name . "Hultog") "Transposed up a fourth from the original"
 tagline = \markup{ \epsfile #X #45 #"../../../Vecchie-musiche/vecchie musiche_logo1.eps"}

 
 }



\score{
 << 
 \new ChoirStaff<< 
 \new Voice ="cantus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
      \transpose c c{
   \ingegneri_mentre_canto
      }
   \set Staff.instrumentName = \ingegneri_mentre_incipit_canto
   \set Staff.midiInstrument = #"choir aahs"
 >>
 \new Lyrics \lyricsto cantus \ingegneri_mentre_lyrics_canto
  \new Voice ="altus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
       \transpose c c{
   \ingegneri_mentre_alto
       }
   \set Staff.instrumentName = \ingegneri_mentre_incipit_alto
   \set Staff.midiInstrument = #"choir aahs"
 >>
 \new Lyrics \lyricsto altus \ingegneri_mentre_lyrics_alto
 \new Voice ="tenor" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
    \transpose c c{
   \ingegneri_mentre_tenore
    }
   \set Staff.instrumentName = \ingegneri_mentre_incipit_tenore
   \set Staff.midiInstrument = #"choir aahs"
 >>
 \new Lyrics \lyricsto tenor \ingegneri_mentre_lyrics_tenore
 \new Voice ="bassus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
    \transpose c c{
   \ingegneri_mentre_basso
    }
   \set Staff.instrumentName = \ingegneri_mentre_incipit_basso
   \set Staff.midiInstrument = #"choir aahs"
 >>
 \new Lyrics \lyricsto bassus \ingegneri_mentre_lyrics_basso

 
 >>
 
 >> 
 \midi{\tempo 2=65}
 
 \include "../../../Vecchie-musiche/layout_vecchie_musiche.ly"
}

\markup{
\vspace #3.0  
\column{  
  \line{\bold{Madrigale }}
  \line{Mentre tu canti io canto teco e moro,}
  \line{Di dolcezza rinasco, Così del canto e del morir mi \auto-footnote pasco "Pasco: pascolare, saziarsi.",}
  \line{Canta dunque poi ch'io per te Cigno divento,}
  \line{E faccio nel morir dolce \auto-footnote concento "Concento: concerto ",}
  \line{Che'l cantar tuo non mi può dar martoro,}
  \line{Ne se m' \auto-footnote ancide "Ancide: uccide." i' moro,}
  \line{Ma dà forz'e virtù al morir mio.}
  
  }
} 



