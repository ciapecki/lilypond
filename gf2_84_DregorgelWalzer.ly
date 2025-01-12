\version "2.18.2"

\header {
  title = "Drehorgel-Walzer"
}

notesUp = {
  \stemUp
  r4 g'4 c| r g c| r g b|r g b|
  r g c| r g c| r g b| r g b|
  r g c| r g c| r g b| r g b|
  r g c| r g b| r g a~|a2.|
}

notesDown = {
  \stemDown
  e2.|e2. f2.|f2.|
  e2.|e2.|d2.|d2.|
  e2.|e2.|f2.|f2.|
  e2.|d2.|c2.|c2.|
}

theMusic = {
  <<
    
    \new Staff
    \time 3/4
    \relative c'
    << \notesUp \\ \notesDown >>


    % Guitar tablature staff
    \new TabStaff \with {
      \magnifyStaff #5/7
    } { 
      \relative c
    << \notesUp \\ \notesDown >>
    }
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
