\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts-barring.ly"

\header {
    % Things that change per piece:
    title = "Stupida e fissa nella incerta sabbia"
    subtitle = "seguita_angelica"
    folio = \markup { Ludovico Ariosto, \italic{Orlando Furioso,} canto VIII ottava 39 }

    % Things that change per part:
    partname = "Canto (part 1 of 4)"
    instrument = "Stupida e fissa (canto)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2015-06-19"
    tagline = #'f
}

\include "../parts/11-berchem-a4-madrigal.ly"
    
\book {
    \bookOutputName "11-stupida_e_fissa"
    \bookOutputSuffix "--1-canto--tr_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef treble
            \global 
            \cantoXI
        >>
        \addlyrics { \cantoLyricsXI }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}
