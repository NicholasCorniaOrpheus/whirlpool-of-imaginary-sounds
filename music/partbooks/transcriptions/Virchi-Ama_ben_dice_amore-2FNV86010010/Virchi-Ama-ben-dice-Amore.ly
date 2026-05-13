\version "2.18.2"

%paper settings and other commands, like ficta
\include "../../../Vecchie-musiche/paper_setting_vecchie_musiche.ly"

#(set-global-staff-size 16)
%landscape option



%#(set-default-paper-size "a4" 'landscape)

%partfile
\include"virchi-ama-parts.ly"

\header{
 title=\markup{ \override #'(font-name . "Hultog") "Ama ben dice Amore"}
 composer = \markup{ \override #'(font-name . "Hultog") "Paolo Virchi (c.1551-1610)" }
 subtitle = \markup{ \override #'(font-name . "Hultog") "Manuscript F.1358 Modena Library" }
 poet = \markup{ \override #'(font-name . "Hultog") "G. Battista Guarini (1538-1612)" }
 copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2019" }
 %tagline ="Nicholas Cornia,2019"
  tagline = \markup{ \epsfile #X #45 #"../../../Vecchie-musiche/vecchie musiche_logo1.eps"}

}





\score{
  <<
 \new ChoirStaff<< 
 \new Voice ="cantus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \virchi_ama_canto_primo
   \set Staff.instrumentName = \virchi_ama_incipit_canto_primo
   \set Staff.midiInstrument  = #"choir aahs"
 >>
 \new Lyrics \lyricsto cantus \virchi_ama_lyrics_canto_primo
 \new Voice ="quinto" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \virchi_ama_canto_secondo
   \set Staff.instrumentName = \virchi_ama_incipit_canto_secondo
   \set Staff.midiInstrument  = #"choir aahs"
 >>
 \new Lyrics \lyricsto quinto \virchi_ama_lyrics_canto_secondo
  \new Voice ="altus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \virchi_ama_alto
   \set Staff.instrumentName = \virchi_ama_incipit_alto
   \set Staff.midiInstrument  = #"choir aahs"
 >>
 \new Lyrics \lyricsto altus \virchi_ama_lyrics_alto
 \new Voice ="tenor" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \virchi_ama_tenore
   \set Staff.instrumentName = \virchi_ama_incipit_tenore
   \set Staff.midiInstrument  = #"choir aahs"
 >>
 \new Lyrics \lyricsto tenor \virchi_ama_lyrics_tenore
 \new Voice ="bassus" \with {
    \include"../../../Vecchie-musiche/voice_options_vecchie_musiche.ly"}<<
   \virchi_ama_basso
   \set Staff.instrumentName = \virchi_ama_incipit_basso
   \set Staff.midiInstrument  = #"choir aahs"
 >>
 \new Lyrics \lyricsto bassus \virchi_ama_lyrics_basso

 
 >>
 
  >> 
  \include "../../../Vecchie-musiche/layout_vecchie_musiche.ly"
    
 \midi{\tempo 2=80}
}

\markup{
\vspace #3.0  
\column{  
  \line{\bold{Madrigale }}
  \line{Ama, ben dice Amore,}
  \line{Gli occhi, il viso e le chiome,}
  \line{Di questa Dea, che Angelica beltate,}
  \line{Non sta senza pietate,}
  \line{Ma lasso il fero nome,}
  \line{Par che nel cor mi dica:}
  \line{Fuggi d'Amore e di pietà nemica,}
  \line{Barbara donna, che gli amanti \auto-footnote ancide, "Ancide: uccide."}
  \line{E poi se 'n burla e ride.}
  
  }
} 



