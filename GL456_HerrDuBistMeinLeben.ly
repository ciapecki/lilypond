\version "2.18.2"

trebleNotesOne = {
    \new Staff
    \relative c' {
      \time 4/4
      \clef treble
      \key g \major
      \set Score.finalFineTextVisibility = ##t
      \autoBeamOff
      e8 e8 e8 fis8 g4 g4 | fis8 g8 fis8 d8 b2|
      e8 e8 e8 fis8 g4 g4 | fis8 g8 a8 c8 b2|
      c8 b8 c8 e,8 e8 fis8 fis4| b8 a8 b8 d,8 e2|
      e8 fis8 g8 e8 fis8 g8 a8 fis8| g8 a8 b8 c8 b2|
      c8 b8 c8 e,8 e8 fis8 fis4| b8 a8 b8 d,8 e2|
      e8 fis8 g8 e8 fis8 g8 fis8 d8| e2 e4 r4|

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
