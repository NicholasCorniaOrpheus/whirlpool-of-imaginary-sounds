\version "2.24.3"

global = {
  \key c\major
  \time 2/1
}

\score{

  \new ChoirStaff<<
  \new Voice = "canto" <<
    {\global \include "./voices/3_canto.ly"}
  >>
  \new Voice = "alto" <<
    {\global \include "./voices/2_alto.ly"}
  >>
  \new Voice = "tenore" <<
    {\clef "treble_8" \global \include "./voices/1_tenore.ly"}
  >>
  \new Voice = "tenore" <<
    {\clef "bass" \global \include "./voices/0_basso.ly"}
  >>
    
  >>
  
}