\version "2.18.2"

trebleNotesOne = {
    \new Staff
    \relative c'' {
      \time 6/8
      \clef treble
      \key g \major
      \set Score.finalFineTextVisibility = ##t

      d8.(e16 d8) b4. |d8. (e16 d8) b4. | a'4 a8 fis4.| g4 g8 d4.| \break
      e4 e8 g8. (fis16 e8)|d8. (e16 d8) b4.| e4 e8 g8. (fis16 e8)|d8. (e16 d8) b4.\break
      a'4 a8 c8. a16 fis8|g4. b4.|g8.(d16 b8) d8.(c16 a8)| g4. (g4) r8|

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
