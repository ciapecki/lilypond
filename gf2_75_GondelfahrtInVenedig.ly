\version "2.18.2"

\header {
  title = "Gondelfahrt in Venedig"
}

notesUp = {
 \stemUp
 \repeat volta 2 {
   r4 g' e'| r g, e'| r g, f'| r2.|
   r4 g, b| r2. | r4 g c| r g e'
   r g, e'| r g, e'| r g, f'| r2.|
   r4 g, b| r2.| r4 g e'~e2.|
 }

}

notesDown = {
  \stemDown
   \repeat volta 2 {
    c,2. | c2. | d2.| d4 b a|
    g2.| g4 a b| c2. | c2.|
    c2.| c2.| d2. | d4 b a|
    g2.| g4 a b| c2.| c2.|
  }
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
