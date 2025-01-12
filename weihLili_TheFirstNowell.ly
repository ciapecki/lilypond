\version "2.18.2"

\header {
  title = "The First Nowell"
  %composer = "J. S. Bach."
}

notesUp = {
  %\stemUp
  \time 3/4
  %\key g \major
  \partial 4
  e'8(d8)| c4. d8 e8(f8)| g2 a8(b8)| c4 b4 a4| g2 a8(b8)|\break
  c4 b4 a4| g4 a4 b4| c4 g4 f4| e2 e8(d8)| c4. d8 e8(f8)|\break
  g2 a8(b8)|c4 b4 a4| g2 a8(b8)|c4 b4 a4|g4 a4 b4|\break
  c4 g4 f4| e2 e8(d8)| c4. d8 e8(f8)|g2 c8(b8)|a2 a4|\break
  g2.| c4 b4 a4| g4 a4 b4| c4 g4 f4|\partial 2 e2 \bar "|."
}

%notesDown = {
%  \stemDown
%  \partial 4
%  g4|
%  \repeat volta 2 {
%      c,2 d4 e| d2 c4 b4| a g a b|
%      c2 d4 e4| f2 f| e2 d4 c|
%      b g a b| c2 d4 e| f2 f|
%      e d4 c| b g a b
%          \alternative {
%            \volta 1 { c g' f d }
%            \volta 2 {
%              c1~| c1~ | c2 c| c1 |
%            }
%          }
%    }
%}

theMusic = {
  <<
    
    \new Staff
    \relative c'
    << \notesUp 
    %\\ \notesDown 
    >>


    % Guitar tablature staff
    %\new TabStaff \with {
    %  \magnifyStaff #5/7
    %} { 
    %  \relative c
    %<< \notesUp
    %%\\ \notesDown 
    %>>
    %}
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
