\version "2.18.2"

\header {
  title = "Gitarren Ständchen"
  %composer = "J. S. Bach."
}

notesUp = {
  \stemUp
  c8 <g' c>~ <g c>4 e8 <g c>~ <g c>4| d8 g8 b g g,8 g' b g|
  d8 <g b>~ <g b>4 f8 <g b>~ <g b>4| e8 g c g c, g' c g|
  f a c f, r2| g8 c e c e, g c g|
  f g b d, e g c c,| d g b g c, g' c4|
  f,8 a c f, r2| g8 c e c e, g a g|
  f g b d, e g c c,| d g <b g'> g c, g' <c e>4|
}

notesDown = {
  \stemDown
  c,4 c8 d8 e4 d8 c8|d2 g,2|
  d'4 d8 e8 f4 e8 d8|e2 c|
  f4. f8 f a c a| g2 e|
  f4. d8 e4. c8| d2 c|
  f4. f8 f a c a|g2 e|
  f4. d8 e4. c8|d2 c
}

theMusic = {
  <<
    
    \new Staff
    \tempo 4 = 40
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
