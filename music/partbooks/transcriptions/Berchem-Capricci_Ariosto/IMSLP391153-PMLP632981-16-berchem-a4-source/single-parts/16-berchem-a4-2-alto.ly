\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts-barring.ly"

\header {
    % Things that change per piece:
    title = "Oh troppo cara, oh troppo escelsa preda"
    subtitle = "Angelica pigliata da li Barbari"
    folio = \markup { Ludovico Ariosto, \italic{Orlando Furioso,} canto VIII ottava 62 }

    % Things that change per part:
    partname = "Alto (part 2 of 4)"
    instrument = "Oh troppo cara (alto)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2015-08-28"
    tagline = #'f
}

\include "../parts/16-berchem-a4-madrigal.ly"
    
\book {
    \bookOutputName "16-o_troppo_cara"
    \bookOutputSuffix "--2-alto--tr_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef "treble"
            \global 
            \altoXVI 
        >>
        \addlyrics { \altoLyricsXVI }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}

\book {
    \bookOutputName "16-o_troppo_cara"
    \bookOutputSuffix "--2-alto--al_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef alto
            \global 
            \altoXVI 
        >>
        \addlyrics { \altoLyricsXVI }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}

\book {
    \bookOutputName "16-o_troppo_cara"
    \bookOutputSuffix "--2-alto--tr8_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef "treble_8"
            \global 
            \altoXVI 
        >>
        \addlyrics { \altoLyricsXVI }
     %   \include "../include/vocal-layout-parts-barring.ly"
    }
}

