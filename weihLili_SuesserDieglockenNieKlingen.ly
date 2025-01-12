\version "2.18.2"

\header {
  title = "Süßer die Glocken nie klingen"
  %composer = "J. S. Bach."
}

notesUp = {
  %\stemUp
  \time 6/8
  e'8. e16 e8 e8(d8) e8| g4. d4.| d8. d16 d8 d8(c8) d8| e4.(e4) r8\break
  g8. g16 g8 g8(e8) c8|c'4. a4.| g8. a16 g8 g8(f8)d8| c4.(c4) r8\break
  d8. d16 d8 e8 e8 e8 |g8. g16 d8 e4.| d8. d16 d8 e8 e8 e8|g8. f16 d8 e4.\break
  g8. f16 e8 e8(d8)c8| c'4.(a4.)| g8. a16 g8 g8(f8) d8| c4.(c4)r8
  \bar "|."
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
