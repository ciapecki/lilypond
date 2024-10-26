\version "2.18.2"

trebleNotesOne = {
    \new Staff
    \relative c'' {
      \time 4/4
      \clef treble
      \key d \minor
      \set Score.finalFineTextVisibility = ##t
      
      \repeat segno 2 {
        r2 r2| r2 r2| r2 r2|

        |r2 r4 c8(bes8)|a8 a8 c8 r8 a8 a8 c8 r8|f4 f4 r4 c4|
        a8(c8) f8 a8 r4 f4|g2 r4 c,8(bes8)|a8 a8 c8 r8 a8 a8 c8 r8|f4 f4 r4 d4|
        b8(d8) f8 a8 r4 a4|g4 r4 r4 c,8(bes8)|a8 a8 c8 r8 a8 a8 c8 r8|f4 f4 r4 c4|
        a8(c8) f8 a8 r4 f4|g2 r2|a8(f8) g8 a8 r2|a8(f8) g8 a8 r2|a8(f8) g8 a8 r4 g4|f4 r4 r2||
        \fine
        c8 c8 d8 c8 r2| c8 c8 d8 c8 r2|f8(e8) f8 g8 a8(g8) f8 g8| c,2 r2|
        c8 c8 d8 c8 r2| c8 c8 d8 c8 r2|e4 e4 r4 d4|c4 r4 r2|
        c8 c8 d8 c8 r2| c8 c8 d8 c8 r2|f8(e8) f8 g8 a8(g8) f8 g8| a2 r2|
        a8(f8) g8 a8 r2| a8(f8) g8 a8 r2| a8(f8) g8 a8 r4 g4| f4 r4 r2||
        \volta 2 \fine
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
