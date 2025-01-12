\version "2.18.2"

\header {
  title = ""
  %composer = "J. S. Bach."
}

notesUp = {
      \stemUp
      \key g \major
      \time 3/4
      \repeat volta 2 {
        r <b' d> <b d>| r <b d> <b d>|
        r <a d> <a d>| r <a d> <a d>|
        r <g b> <g b>| r <g b> <g b>|
        r <fis d'> <fis d'>| r <fis d'> <fis d'>|
        r <g c> <g c>| r <g c> <g c>|
        r <g d'> <g d'>| r <g d'> <g d'>|
        r <c e> <c e>| r <c fis> <c fis>|
        r <g g'> <g g'>~| <g g'>2.
      }
    }

notesDown = {
  \stemDown
      \key g \major
      \time 3/4
      g2. g2.
      fis2. fis2.
      e2. e2.
      d2. d2. \break
      c2. e2. b2. d2. a2. d2. g2. g,2.
}

theMusic = {
  <<
    
    \new Staff
    \relative c'
    << \notesUp \\ \notesDown 
    >>


    % Guitar tablature staff
    \new TabStaff \with {
      \magnifyStaff #5/7
    } { 
      \relative c
    << \notesUp \\ \notesDown 
  >>
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
