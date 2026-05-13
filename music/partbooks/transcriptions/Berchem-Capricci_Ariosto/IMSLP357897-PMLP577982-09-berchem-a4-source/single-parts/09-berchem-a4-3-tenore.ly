\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts-barring.ly"

\header {
    % Things that change per piece:
    title = "Pieno di dolce e d’amoroso affetto"
    subtitle = "Angelica si dimostra Cortese a Sacripante"
    folio = \markup { Ludovico Ariosto, \italic{Orlando Furioso,} canto I ottava 54 }

    % Things that change per part:
    partname = "Tenore (part 3 of 4)"
    instrument = "Pieno di dolce (tenore)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2014-12-25"
    tagline = #'f
}

\include "../parts/09-berchem-a4-madrigal.ly"
    
\book {
    \bookOutputName "09-pieno_di_dolce"
    \bookOutputSuffix "--3-tenore--tr8_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef "treble_8"
            \global 
            \tenoreIX
        >>
        \addlyrics { \tenoreLyricsIX }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}

\book {
    \bookOutputName "09-pieno_di_dolce"
    \bookOutputSuffix "--3-tenore--al_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef alto
            \global 
            \tenoreIX 
        >>
        \addlyrics { \tenoreLyricsIX }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}

