\version "2.18.2"

\header {
  title = "Bruder Jakob"
  %composer = "J. S. Bach."
}

notes = {
      \key a \major
        a4 b4 cis4 a4 | a4 b4 cis4 a4|
        cis4 d4 e2|cis4 d4 e2|e8 fis8 e8 d8 cis4 a4|
        e'8 fis8 e8 d8 cis4 a4|a4 e4 a2|a4 e4 a2||
    }

theMusic = {
  <<
    % Standard notation staff
    \new Staff { 
      \clef treble 
      \relative c'
      \notes 
    }

    % Guitar tablature staff
    \new TabStaff { 
      \relative c
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
