ficta = { \once \set suggestAccidentals = ##t }

mens ={ \override Staff.NoteHead.style = #'baroque }

endmens ={ \revert Staff.NoteHead.style }

\header{
 title="Secondo libro dei Madrigali a quattro voci"
 composer = "Maddalena Casulana"
 copyright = "Nicholas Cornia,2018"
 tagline ="Nicholas Cornia,2018"
 piece ="Prima Parte- Cinta di fior un giorno"
}

\paper {
 top-system-spacing #'basic-distance = #10
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
  system-system-spacing #'basic-distance = #20
}

cantus = \relative c'{
\key c \major
\clef treble 
\time 4/4
\autoBeamOff
r2 g' a4 a c4. d8 e4. f8 g4 f e4. d8 c8[b] c4 b2 r4 d4~
d e f e8[d] e[d e f] g4 c,~c e d2 c r4 c g' e e fis g g g e e2 
cis4 cis cis2. cis4 d2 e, a1 a2 r4 c4 c4. c8 d4 a c1 
c2 c c d e2. d4 f2 e d c1 b2 c r8 a a a a4 a e2 
a4 d, d'4. d8 d2 b a a r4 c2 d4 e8[f g f] e[d e c] d4 a c e8[d] 
b8[c d e] d2 e4 c c4. c8 f4 d e2 e,4 g2 g4 g1 g\fermata 


}

lyrics_cantus = \lyricmode {
  
}

altus = \relative c'{
\key c \major
\clef treble 
\time 4/4
\autoBeamOff
c2 e4 e f4. g8 a4. b8 c1 c2 g g r4 b4~
b c c2 c4 c bes a f c'2 b4 a2 g 
g a4 c~c b2 a4~a8[\ficta gis16 \ficta fis] gis4 a e 
a2. a4 a2  a2 f1 e2 r4 a4 a4. a8 bes4 f g1 
a2 a a a c2. b4 c2 c g g g1 g2 r8 fis fis fis fis4 fis a2 
fis4 g g4. g8 a2 g f4 e8[d] e2 fis4 a2 b4 c 
c,8[d] e[ f g a] b4 c a8[g e f] g8[a] b8 c4 b16[a] b4 
c a a4. a8 c4 b c2 c,4 e d c~c b8[a] b2 c1\fermata \bar"||"



}

lyrics_altus = \lyricmode {
  
}

tenor = \relative c'{
\key c \major
\clef treble
\time 4/4
\autoBeamOff
r1 c2 f4 f g4. f8 e4 a g4. f8 e8[d] e4 d2 r4 g4~
g4 g a2 g4 c, d8[e f g] a4 g2 d4 f2 e 
d4 c c2 e4 d2 c4 b2 a4 a' 
e2. e4 f2 e d1 cis2 r4 f f4. f8 f8 f f4~f e8[d] e2 
f2 f f f g2. g4 a2 g d e d1 
e2 r8 d d d d4 d cis2 d4 b b4. b8 a2 d4 e ~e8 [d] d4. cis16[b] cis4 d4 f2 d4
c8[d e f] g4 c, g' f4. e8 c8[d] e[c g' e] fis4 g 
c,4 f f4. f8 a4 g g2~g4 c, d e d1 e\fermata 


}

lyrics_tenor = \lyricmode {
  
}

bassus = \relative c'{
\key c \major
\clef bass 
\time 4/4
\autoBeamOff
%parte 1
r1 f,2 f4 f c'2. f,4 c1 g'2 r4 g~g c f,8[g a b] c4 a g f~f8 f c4 g'2 
r4 f c' c b c a2 e4 g2 a4 e2 a4 a 
\time 3/2
a2. a4 d2 cis d1 
\time 4/4 a2 r4 f f4. f8 bes4 d c1 
\time 3/2 
f,2 f f d c2. g'4 f2 c' b c g1 
\time 4/4 
c,2 r8 d d d d4 d a'2 d,4 g g4. g8 fis2 g a \grace{a} a, 
r1 r1 r1 r1 r4 f' f4. f8 f4 g c,2~c4 c b c g'1 c,\fermata \bar"||"

}

lyrics_bassus = \lyricmode {
  
}



\version "2.18.2"



\score{
 \new ChoirStaff<< 
 \new Voice ="cantus" \with {
    \consists "Ambitus_engraver"}<<
   \cantus
   \set Staff.instrumentName = #"Canto"
 >>
 \new Lyrics \lyricsto cantus \lyrics_cantus
  \new Voice ="altus" \with {
    \consists "Ambitus_engraver"}<<
   \altus
   \set Staff.instrumentName = #"Alto"
 >>
 \new Lyrics \lyricsto altus \lyrics_altus
 \new Voice ="tenor" \with {
    \consists "Ambitus_engraver"}<<
   \tenor
   \set Staff.instrumentName = #"Tenore"
 >>
 \new Lyrics \lyricsto tenor \lyrics_tenor
 \new Voice ="bassus" \with {
    \consists "Ambitus_engraver"}<<
   \bassus
   \set Staff.instrumentName = #"Basso"
 >>
 \new Lyrics \lyricsto contra \lyrics_bassus

 
 >>  
 %\midi{\tempo 2=70}
}

\markup{
\vspace #3.0  
\column{  
  \line{\bold{ }}
  
  }
} 



\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #6
    \override StaffGrouper.staff-staff-spacing.basic-distance = #6
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #8
\override StaffGrouper.staffgroup-staff-spacing.padding = #8
\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
  
}
  