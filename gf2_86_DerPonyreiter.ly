\version "2.18.2"

\header {
  title = "Der Ponyreiter"
  %composer = "J. S. Bach."
}

notesUp = {
        \stemUp
        \partial 4
          r4 |
        \repeat volta 2 {
          r4 <c' e> r2| r4 <b f'> r2| r1 |
          r4 <c e> r2| r4 <a c> r4 <a c>| r4 <g c> r2|
          r1| r4 <c e> r2| r4 <a c> r4 <a c>|
          r4 <g c> r2| r1
          \alternative {
            \volta 1 { r1 }
            \volta 2 {
              r4 g b g| c g b g| c2 <c e>2| <g c>1|
            }
          }
        }
    }

notesDown = {
  \stemDown
  \partial 4
  g4|
  \repeat volta 2 {
      c,2 d4 e| d2 c4 b4| a g a b|
      c2 d4 e4| f2 f| e2 d4 c|
      b g a b| c2 d4 e| f2 f|
      e d4 c| b g a b
          \alternative {
            \volta 1 { c g' f d }
            \volta 2 {
              c1~| c1~ | c2 c| c1 |
            }
          }
    }
}

theMusic = {
  <<
    
    \new Staff
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
