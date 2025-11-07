  %! abjad.LilyPondFile._get_format_pieces()
\version "2.24.3"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"


    ficta = { \once \set suggestAccidentals = ##t }
    mens ={ \override Staff.NoteHead.style = #'baroque }

    endmens ={ \revert Staff.NoteHead.style }

    %#(set-global-staff-size 15.5767485433)


    \paper {
     top-system-spacing.basic-distance = #10
      system-system-spacing.basic-distance = #20
      last-bottom-spacing.basic-distance = #10
    horizontal-shift = #7
    top-margin = 1.5 \cm
    bottom-margin = 1 \cm
    left-margin = 1.8 \cm
    right-margin = 1.8 \cm


    }

    #(set-global-staff-size 18)

    \header{
     title= \markup{
       \override #'(font-name . "Hultog") 
       "A Madrigalist Wuerfelspiel" } 
     subtitle = \markup{ 
       \override #'(font-name . "Hultog") 
       "A Whirlpool of Imaginary Sounds project" }
     composer = \markup{ \override #'(font-name . "Hultog") "?" }
     poet = \markup{ \override #'(font-name . "Hultog") "" }
     copyright = \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia,2025" }
     arranger =  \markup{ \override #'(font-name . "Hultog") "Nicholas Cornia" }
     tagline = \markup{ \epsfile #X #35 #"wois.eps"}
    }

    \version "2.18.2"
    \language "english"

    \layout{
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override StaffGrouper.staff-staff-spacing.basic-distance = #5
    \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #5
\override StaffGrouper.staffgroup-staff-spacing.padding = #5
  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)

  }
  \context { \Voice \override NoteHead.style = #'baroque }
   \context {
    \Staff
    \RemoveEmptyStaves
  }
  \context{
    \Voice
    \RemoveEmptyStaves
  }
  \context {      \Dynamics
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.basic-distance = #10
    }


} 
% OPEN_BRACKETS:
\context Score = "Score"
<<
    % OPEN_BRACKETS:
    \context Voice = "Canto"
    {
        % BEFORE:
        % COMMANDS:
        \time 2/1
        d''1
        d''1
        b'1
        c''1
        bf'1
        a'1
        g'1
        a'1
        g'1
        e'1
        g'1
        a'1
        g'1
        c''1
        d''1
        ef''1
        d''1
        c''1
        b'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        fs'1
        ef'1
        d'1
        fs'1
        ef'1
        ef'1
        d'1
        d'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        g'1
        e'1
        e'1
        f'1
        g'1
        g'1
        f'1
        e'1
        e'1
        d'1
        e'1
        e'1
        d'1
        e'1
        d'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        g1
        a1
        g1
        f1
        g1
        g1
        a1
        g1
        f1
        g\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        d''1
        d''1
        f''1
        f''1
        d''1
        bf'1
        d''1
        f''1
        d''1
        bf'1
        bf'1
        g'1
        g'1
        fs'1
        g'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        e'1
        d'1
        f'1
        e'1
        d'1
        f'1
        af'1
        g'1
        bf'1
        bf'1
        g'1
        a'1
        g'1
        e'1
        d'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        e'1
        e'1
        f'1
        e'1
        d'1
        e'1
        f'1
        e'1
        f'1
        f'1
        d'1
        d'1
        g'1
        e'1
        f'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        f'1
        f'1
        e'1
        d'1
        g'1
        e'1
        c'1
        d'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
    % CLOSE_BRACKETS:
    }
    % OPEN_BRACKETS:
    \context Voice = "Alto"
    {
        % BEFORE:
        % COMMANDS:
        \time 2/1
        g'1
        fs'1
        g'1
        a'1
        g'1
        fs'1
        g'1
        a'1
        d'1
        a'1
        d'1
        d'1
        d'1
        g'1
        fs'1
        g'1
        g'1
        g'1
        g'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        d'1
        c'1
        a'1
        d'1
        b1
        c'1
        a1
        b\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        bf1
        c'1
        bf1
        d'1
        e'1
        e'1
        c'1
        c'1
        bf1
        bf1
        g1
        c'1
        bf1
        a1
        bf\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        es1
        f1
        es1
        f1
        es1
        f1
        es1
        f1
        es\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        a'1
        bf'1
        c''1
        f'1
        f'1
        f'1
        d'1
        bf1
        d'1
        f'1
        f'1
        ef'1
        d'1
        d'1
        d'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        bf1
        a1
        c'1
        f1
        c'1
        g1
        bf1
        a1
        c'1
        e'1
        f'1
        e'1
        d'1
        d'1
        d'1
        c'1
        b\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        c'1
        c'1
        d'1
        c'1
        b1
        c'1
        d'1
        c'1
        d'1
        c'1
        b1
        a1
        d'1
        c'1
        d'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        e'1
        f'1
        d'1
        b1
        g1
        as\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
    % CLOSE_BRACKETS:
    }
    % OPEN_BRACKETS:
    \context Voice = "Tenore"
    {
        % BEFORE:
        % COMMANDS:
        \clef "treble_8"
        \time 2/1
        d'1
        d'1
        b1
        c'1
        bf1
        a1
        g1
        g1
        a1
        c'1
        d'1
        ef'1
        d'\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        b1
        g1
        fs1
        b1
        g1
        g1
        fss1
        g\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        g1
        a1
        g1
        f1
        e1
        bf1
        a1
        g1
        g1
        f1
        e1
        a1
        f1
        e1
        f\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        a,1
        c1
        d1
        c1
        a,1
        c1
        d1
        c1
        c1
        c1
        d1
        c\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        fs1
        g1
        a1
        d'1
        f'1
        d'1
        bf1
        d'1
        f'1
        d'1
        d'1
        c'1
        bf1
        a1
        b\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        bf1
        a1
        c'1
        g1
        f1
        f1
        e1
        d1
        g1
        bf1
        a1
        bf1
        g1
        g\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        g1
        g1
        b1
        g1
        g1
        g1
        b1
        g1
        b1
        a1
        g1
        f1
        b1
        a1
        a\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        c'1
        c'1
        b1
        as1
        as1
        b1
        b1
        g1
        e1
        d\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
    % CLOSE_BRACKETS:
    }
    % OPEN_BRACKETS:
    \context Voice = "Basso"
    {
        % BEFORE:
        % COMMANDS:
        \clef "bass"
        \time 2/1
        g1
        fs1
        g1
        a1
        g1
        fs1
        g1
        ef1
        d1
        c1
        b,1
        c1
        g,\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        b,1
        c1
        d1
        b,1
        ef1
        c1
        d1
        g,\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        e1
        a,1
        e1
        bf,1
        e,1
        e1
        f1
        c1
        e1
        bf,1
        c1
        a,1
        bf,1
        c1
        bf,\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        c,1
        d,1
        c,1
        b,,1
        c,1
        f,1
        c,1
        b,,1
        c,\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        d1
        g1
        f1
        bf,1
        bf,1
        bf,1
        bf,1
        bf,1
        bf,1
        bf,1
        bf,1
        c1
        d1
        d1
        g,\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        f,1
        c1
        bf,1
        e1
        g1
        f1
        g1
        c1
        g,\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        c1
        c1
        b,1
        c1
        g,1
        c1
        b,4
        c1
        b,1
        f,1
        b,1
        d1
        g,1
        a,1
        d\breve
        % AFTER:
        % COMMANDS:
        \bar "||"
        f1
        f1
        e1
        d1
        d1
        c1
        b,1
        % AFTER:
        % COMMANDS:
        \bar "||"
    % CLOSE_BRACKETS:
    }
% CLOSE_BRACKETS:
>>