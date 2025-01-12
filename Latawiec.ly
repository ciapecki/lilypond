\version "2.18.2"

\header {
  title = "Latawiec"
  %composer = "J. S. Bach."
}

notesUp = {
        \stemUp
        \partial 4
          r4 | a8 <c' e'>8 r4 | e8 <c' e'>8 r4|
               a8 <c' e'>8 r4 | e8 <c' e'>8 r4|
          d8 <f' b>8 r4|d8 <f' b>8 r4|
          r4 <c' e'>8 e8| d4 r4|
          a8 <c' e'>8 r4|e8 <c' e'>8 r4|
          a8 <c' e'>8 r4| e8 <c' e'>8 r4|
          d8 <b f'>8 r4| d8 <b f'>8 r4|
          a8 <c' e'>8 <c' e'>8 <c' e'>8| 
          <c' e'>4 \fine
    }

notesDown = {
  \stemDown
  \partial 4
  e8 g8| a4 a8 g8| e4 e8 g8|
          a4 a8 g8| e4 e8 g8|
    d4 e8 g8| d4 c8 d8|
    e8 g4 e8| d4 e8 g8|
    a4 a8 g8| e4 e8 g8|
    e4 e8 g8| e4 e8 g8|
    d4 e8 g8| d4 e8 g8|
    a2~ |a4
}

theMusic = {
  <<
    
    \new Staff
    \time 2/4
  %\relative c'
  \fixed c'
    << \notesUp \\ \notesDown >>


    % % Guitar tablature staff
    % \new TabStaff \with {
    %   \magnifyStaff #5/7
    % } { 
    %   \relative c
    % << \notesUp \\ \notesDown >>
    % }
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
