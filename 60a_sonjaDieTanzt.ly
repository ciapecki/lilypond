\version "2.18.2"

trebleNotesOne = {
    \new Staff
    \relative g' {
      \time 4/4
      \tempo 4 = 160  % Set tempo to 160 BPM (increase from default 120 BPM)
      a,2 e'4 e4 | a,2 e'4 e4 | a,4 b4 c4 d4 | e4 d4 c4 b4 | a2 e'4 e4 |
      a,2 e'4 e4 | e4 d4 c4 b4 | a2 r2 |
      \repeat volta 2 {
        f'2 f4 f4 | e2 e4 e4 | d4 e4 f4 d4 |
        e2 e4 e4 | a,2 e'4 e4 | a,2 e'4 e4 | e4 d4 c4 b4 | a2 r2
      }
    }
}

theMusic = {
    \new GrandStaff
        <<
            \trebleNotesOne
        >>
}

%% PDF SCORE
\score {
    \theMusic

  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
    indent = 0.0
    #(layout-set-staff-size 30)
  }
}

%% MIDI SCORE
\score {
    \unfoldRepeats { 
        \theMusic
    }
    \midi { }
}
