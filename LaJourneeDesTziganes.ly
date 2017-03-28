% La Journee des Tziganes
\version "2.18.0"
%\include "bend.ly"
\include "FigureOne.ly"
\include "FigureTwo.ly"
\include "FigureThree.ly"
\include "FigureFour.ly"
\include "FigureFive.ly"
%\include "FigureFiveII.ly"

\book {
 \header {
 title = "La Journée Des Tziganes"
 subtitle = "DRAFT"
 subsubtitle = "v0.2"
 composer = "John Jorgenson"
 copyright = \markup {\char ##x00A9 Copyright Jorgensongs 2014 }
 }

\score { 
%\unfoldRepeats

\new Staff {
\key e \minor \tempo 4 = 110
 \repeat volta 2 {
 \FigureOne 
 }

 \repeat volta 2 {
  \FigureTwo 
 }

 \repeat volta 2 {
  \FigureThree
 }

 \FigureFour

 \repeat volta 2 {
  \FigureFive
 }

% \repeat volta 2 {
%  \FigureTwo
% }
 
% \repeat volta 2 {
%  \FigureThree
% }
% \FigureFour

% \FigureFiveII
% \FigureOne


}

%\midi {}
} %close score 
} %close book
