\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts.ly"

\header {
    % Things that change per piece:
    title = "O gran bonta de' cavallieri antiqui"
    folio = \markup { Ludovico Ariosto, \italic{Orlando Furioso,} canto I ottava 22 }

    % Things that change per part:
    partname = "Tenore (part 3 of 4)"
    instrument = "O gran bonta de' cavallieri antiqui (tenore)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2013-09-23"
    tagline = #'f
}

\include "../parts/03-berchem-a4-madrigal.ly"
    
\book {
    \bookOutputName "03-o_gran_bonta_de_cavallieri"
    \bookOutputSuffix "--3-tenore--tr8_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef "treble_8"
            \global 
            \tenoreIII
        >>
        \addlyrics { \tenoreLyricsIII }
     %   \include "../include/vocal-layout-parts.ly"
    }
}

\book {
    \bookOutputName "03-o_gran_bonta_de_cavallieri"
    \bookOutputSuffix "--3-tenore--al_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef alto
            \global 
            \tenoreIII 
        >>
        \addlyrics { \tenoreLyricsIII }
     %   \include "../include/vocal-layout-parts.ly"
    }
}

