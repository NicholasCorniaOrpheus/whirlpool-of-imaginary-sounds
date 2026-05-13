\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts-barring.ly"

\header {
    % Things that change per piece:
    title = "Sia vile agli altri, e da quel solo amata"
    subtitle = "Seguita Sacripante"
    folio = \markup { Ludovico Ariosto, \italic{Orlando Furioso,} canto I ottava 44 }

    % Things that change per part:
    partname = "Tenore (part 3 of 4)"
    instrument = "Sia vile agli altri (tenore)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2014-12-24"
    tagline = #'f
}

\include "../parts/07-berchem-a4-madrigal.ly"
    
\book {
    \bookOutputName "07-sia_vile_agli_altri"
    \bookOutputSuffix "--3-tenore--tr8_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef "treble_8"
            \global 
            \tenoreVII
        >>
        \addlyrics { \tenoreLyricsVII }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}

\book {
    \bookOutputName "07-sia_vile_agli_altri"
    \bookOutputSuffix "--3-tenore--al_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef alto
            \global 
            \tenoreVII 
        >>
        \addlyrics { \tenoreLyricsVII }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}

