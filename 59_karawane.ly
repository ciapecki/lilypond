\version "2.18.2"

trebleNotesOne = {
    \new Staff
    \relative g' {
      \time 4/4
      \tempo 4 = 120  % Set tempo to 160 BPM (increase from default 120 BPM)
      \repeat volta 2 {
        r4 e'4 r4 e4 | r4 e4 r4 e4
      }
      \repeat volta 2 {
        r4 e4 r4 e4 | r1 |
        r4 e4 r2 | r1
      }
      \repeat volta 2 {
        r4 e4 r4 e4 | r4 e4 r4 e4
      }
      \repeat volta 2 {
        r4 e4 r4 e4 | r1 | r4 e4 r4 e4 | r1
      }
    }
}
trebleNotesTwo = {
    \new Staff
    \relative g' {
      \time 4/4
      \tempo 4 = 120  % Set tempo to 160 BPM (increase from default 120 BPM)

      \repeat volta 2 {
        a,2 e'2 | e2 e2
      }
      \repeat volta 2 {
        a,2 a2 | a4 b4 c4 d4 |
        e2 e4 f4 | e4 d4 b4 c4
      }
      \repeat volta 2 {
        c2 e2 | g2 d2
      }
      \repeat volta 2 {
        a2 e'2 | a,2 e'2 | a,2 e'2 | a,1
      }
    }
}

theMusic = {
    \new GrandStaff
        <<
            \trebleNotesOne
            \trebleNotesTwo
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
