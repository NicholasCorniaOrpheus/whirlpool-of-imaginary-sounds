\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts-barring.ly"

\header {
    % Things that change per piece:
    title = "La notte Orlando alle noiose piume"
    subtitle = "Lamento d'Orlando per Angelica"
    folio = \markup { Ludovico Ariosto, \italic{Orlando Furioso,} canto VIII ottava 71 }

    % Things that change per part:
    partname = "Canto (part 1 of 4)"
    instrument = "La notte Orlando (canto)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2015-08-30"
    tagline = #'f
}

\include "../parts/18-berchem-a4-madrigal.ly"
    
\book {
    \bookOutputName "18-la_notte_orlando"
    \bookOutputSuffix "--1-canto--tr_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef treble
            \global 
            \cantoXVIII
        >>
        \addlyrics { \cantoLyricsXVIII }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}
