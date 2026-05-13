\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts-barring.ly"

\header {
    % Things that change per piece:
    title = "Ch’aver può donna al mondo più di buono"
    subtitle = "seguita_angelica"
    folio = \markup { Ludovico Ariosto, \italic{Orlando Furioso,} canto VIII ottava 42 }

    % Things that change per part:
    partname = "Basso (part 4 of 4)"
    instrument = "Ch’aver può donna (basso)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2015-08-28"
    tagline = #'f
}

\include "../parts/14-berchem-a4-madrigal.ly"

\book {
    \bookOutputName "14-ch_aver_puo_donna"
    \bookOutputSuffix "--4-basso--bs_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef bass
            \global 
            \bassoXIV 
        >>
        \addlyrics { \bassoLyricsXIV }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}
