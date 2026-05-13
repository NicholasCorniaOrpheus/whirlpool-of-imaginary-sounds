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
    partname = "Basso (part 4 of 4)"
    instrument = "O gran bonta de' cavallieri antiqui (basso)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2013-09-23"
    tagline = #'f
}

\include "../parts/03-berchem-a4-madrigal.ly"

\book {
    \bookOutputName "03-o_gran_bonta_de_cavallieri"
    \bookOutputSuffix "--4-basso--bs_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef bass
            \global 
            \bassoIII 
        >>
        \addlyrics { \bassoLyricsIII }
     %   \include "../include/vocal-layout-parts.ly"
    }
}
