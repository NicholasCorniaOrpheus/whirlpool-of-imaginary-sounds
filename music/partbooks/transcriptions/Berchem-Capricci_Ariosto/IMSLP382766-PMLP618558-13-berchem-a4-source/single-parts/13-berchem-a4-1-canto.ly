\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts-barring.ly"

\header {
    % Things that change per piece:
    title = "Ma che mi possi nuocere non veggio"
    subtitle = "seguita_angelica"
    folio = \markup { Ludovico Ariosto, \italic{Orlando Furioso,} canto VIII ottava 41 }

    % Things that change per part:
    partname = "Canto (part 1 of 4)"
    instrument = "Ma che mi possi (canto)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2015-06-20"
    tagline = #'f
}

\include "../parts/13-berchem-a4-madrigal.ly"
    
\book {
    \bookOutputName "13-ma_che_mi_possi"
    \bookOutputSuffix "--1-canto--tr_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef treble
            \global 
            \cantoXIII
        >>
        \addlyrics { \cantoLyricsXIII }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}
