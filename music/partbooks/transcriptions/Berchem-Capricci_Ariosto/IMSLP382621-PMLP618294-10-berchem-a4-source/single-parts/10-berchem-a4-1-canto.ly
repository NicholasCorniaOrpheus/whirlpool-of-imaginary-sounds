\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts-barring.ly"

\header {
    % Things that change per piece:
    title = "Quando si vide sola in quel deserto"
    subtitle = "Lamento d'Angelica"
    folio = \markup { Ludovico Ariosto, \italic{Orlando Furioso,} canto VIII ottava 38 }

    % Things that change per part:
    partname = "Canto (part 1 of 4)"
    instrument = "Quando si vide (canto)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2015-06-19"
    tagline = #'f
}

\include "../parts/10-berchem-a4-madrigal.ly"
    
\book {
    \bookOutputName "10-quando_si_vide"
    \bookOutputSuffix "--1-canto--tr_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef treble
            \global 
            \cantoX
        >>
        \addlyrics { \cantoLyricsX }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}
