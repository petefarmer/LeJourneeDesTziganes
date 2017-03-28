\version "2.16.0"
\include "bend.ly"

\include "JJ.ly"

\pointAndClickOff 

\version "2.16.0"

TimeKey = { \time 4/4 \key e \minor }

global = {
 \TimeKey
}
\paper {
 #(set-paper-size "a4" )
}

\book {
 \header {
  title = "La Journee des Tziganes"
  subtitle = "DRAFT"
  subsubtitle = "v0.1"
  composer = "John Jorgenson"
  copyright = \markup { \char ##x00A9 Copyright Jorgensongs 2012 }
 }

\score {
 \new StaffGroup <<
  \new Staff << \set Staff.instrumentName = #"Guitar 1" 
                \tempo 4 = 120
                \global
                \JJNotes 
             >>
 >>
 \layout {
 }
} % score
} % book
