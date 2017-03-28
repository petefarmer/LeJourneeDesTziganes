%  Le Journee des Tziganes
\version "2.18.0"
\include "definitions_No-Tab.ly"
\include "AGuitarOne.ly"
\include "ARhythmGuitar.ly"

\book {
 \header {
  title = "Le Journée Des Tziganes"
  subtitle = "DRAFT"
  subsubtitle = "v0.3"
  composer = "John Jorgenson"
  copyright = \markup { \char ##x00A9 Copyright Jorgensongs 2014 }
 }

\score {
%\unfoldRepeats
\new StaffGroup <<

  \new Staff \with {
   instrumentName = \markup {\column {"Guitar 1"}}
   \clef "treble_8"
   \time 4/4
  }{
   \tempo 4 = 120
   \key e \minor
   \AGuitarOne
  }

  \new Staff \with {
   instrumentName = \markup {\column {"Rhythm" \line {"Guitar"}}}
   \clef "treble_8"
  }{
   \key e \minor
   \ARhythmGuitar
  }

 >> % StaffGroup
 \layout {
  \context {
   \Score {
%    \override StaffGrouper.staff-staff-spacing.padding = #5
%    \override StaffGrouper.staff-staff-spacing.basic-distance = #5

   }
  }
  \context { \TabStaff \remove Clef_engraver }
  \context {
   \Staff
\override Glissando #'minimum-length = #4
\override Glissando #'springs-and-rods = #ly:spanner::set-spacing-rods 
\RemoveEmptyStaves 
  }
 }
\midi {}
} % score
} % book
