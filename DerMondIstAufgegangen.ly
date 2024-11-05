\version "2.18.2"

\header {
  title = "Der Mond ist aufgegangen"
  %composer = "J. S. Bach."
}

notes = {
      \key f \major
      \partial 4
      f4| g4 f4 bes4 a4| g2 f4 a4| a4 a4 d4 c4| bes2 a4 a4|
      a4 a4 bes4 a4| g2 r4 f4|g4 f4 bes4 a4| g2 f4 a4|
      a4 a4 d4 c4| bes2 a4 a4| a4 a4 bes4 a4| g4 g4 f4||
    }

theMusic = {
  <<
    % Standard notation staff
    \new Staff { 
      \clef treble 
      \relative c
      \notes 
    }

    % Guitar tablature staff
    \new TabStaff { 
      \relative c,
      \notes 
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
