\version "2.18.2"

trebleNotesOne = {
    \new Staff
    \relative c' {
      \tempo 4=100
      \time 4/4
      \clef treble
      \set Score.finalFineTextVisibility = ##t
      
      b2 gis4 a4 | b2 gis4 e4| fis4 fis4 fis4 gis4| e2 r2 | \break
      b'2 gis4 a4 | b2 gis4 e4 | fis4 fis4 fis4 gis4|e2 r4 e4| \break
      fis4 fis4 fis4 gis4| a2 fis4 fis4| gis4 fis4 gis4 a4|b2 r2| \break
      b2 gis4 a4| b2 gis4 e4|fis4 fis4 fis4 gis4|e2 r2|
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
