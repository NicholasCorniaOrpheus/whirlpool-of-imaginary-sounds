\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts-barring.ly"

\header {
    % Things that change per piece:
    title = "Dirò d’Orlando in un medesmo tratto"
    folio = \markup { Ludovico Ariosto, \italic{Orlando Furioso,} canto I ottava 2 }

    % Things that change per part:
    partname = "Tenore (part 3 of 4)"
    instrument = "Dirò d’Orlando (tenore)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2014-12-22"
    tagline = #'f
}

\include "../parts/02-berchem-a4-madrigal.ly"
    
\book {
    \bookOutputName "02-diro_dorlando"
    \bookOutputSuffix "--3-tenore--tr8_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef "treble_8"
            \global 
            \tenoreII
        >>
        \addlyrics { \tenoreLyricsII }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}

\book {
    \bookOutputName "02-diro_dorlando"
    \bookOutputSuffix "--3-tenore--al_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef alto
            \global 
            \tenoreII 
        >>
        \addlyrics { \tenoreLyricsII }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}

