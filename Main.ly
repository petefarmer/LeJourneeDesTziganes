%  Le Journee des Tziganes
\version "2.18.0"
\include "definitions_No-Tab.ly"
\include "tabber.ly"
\include "predefined-guitar-fretboards.ly"
\include "StaticChordChart.ly"
%\include "RhythmicLine.ly"
\include "ARhythmBeats.ly"
\include "BRhythmBeats.ly"
\include "CRhythmBeats.ly"
\include "AGuitarOne.ly"
\include "AGuitarOneTab.ly" 
\include "BGuitarOne.ly"
\include "BGuitarOneTab.ly"
\include "CGuitarOne.ly"
\include "CGuitarOneTab.ly"
\include "ARhythmGuitar.ly"
\include "BRhythmGuitar.ly"
\include "ARhythmChords.ly"
\include "BRhythmChords.ly"
\include "CRhythmChords.ly"
%\include "ARhythmStrums.ly"
\include "FourBarsEmRhythmGuitar.ly"
\include "FourBarsEmRhythmChords.ly"
\include "FourBarsEmRhythmBeats.ly"
\include "FourBarsEmGuitarOne.ly"

#(define (text-interface::print-X-centered grob)
 (ly:stencil-aligned-to (ly:text-interface::print grob) X CENTER))

%\book {
 \header {
  title = "Le Journée Des Tziganes"
  subtitle = "DRAFT"
  subsubtitle = "v0.3"
  composer = "John Jorgenson"
  copyright = \markup { \char ##x00A9 Copyright Jorgensongs 2014 }
 }

\markup {
 \fill-line {
  \score {
   <<
   \new ChordNames << 
       \StaticChordChart
     >>
   \new FretBoards << 
     \StaticChordChart
     >>
   >>
   \layout {
    line-width = #100
    ragged-last = ##t
    \context {
     \ChordNames
     \override ChordName.stencil = #text-interface::print-X-centered
    }

    \context {
     \FretBoards
     \override FretBoard.align-dir = #CENTER
    }
   }
  }
 }
}


\score {
%\unfoldRepeats
%\new StaffGroup <<
 <<

  \context ChordNames {
   \override ChordName #'font-size = #-1
   \ARhythmChords
   \FourBarsEmRhythmChords
   \FourBarsEmRhythmChords
   {
   \repeat volta 2 {
    \BRhythmChords
   }
     \alternative {
      { \CRhythmChords }
      { \CRhythmChords }
    }
   }
   \ARhythmChords
  }

%{
   \new RhythmicLine {
    \ARhythmBeats
   }
%}

\new StaffGroup <<

  \new RhythmicStaff \with {
   \consists "Pitch_squash_engraver"
%   squashedPostion = #0
   instrumentName = \markup {\column {"Rhythm" \line {"Guitar"}}}
   }{
   \override Staff.NoteHead.style = #'slash
   \ARhythmBeats
   \FourBarsEmRhythmBeats
   \FourBarsEmRhythmBeats
   {
   \repeat volta 2 {
    \BRhythmBeats
   }
     \alternative {   
       { \CRhythmBeats }
       { \CRhythmBeats }       
     }
   }
      \ARhythmBeats

   }

%  \new RhythmicStaff {
   %\override Staff.NoteHead.style = #'slash
%   \ARhythmChords
%  }

  \new Staff \with {
   instrumentName = \markup {\column {"Guitar 1"}}
   \clef "treble_8"
%   \time 4/4
  }{
   \tempo 4 = 120
   \key e \minor
   \AGuitarOne
   \FourBarsEmGuitarOne
   \FourBarsEmGuitarOne
   {
   \repeat volta 2 {
    \BGuitarOne
   }
    \alternative {
     { \CGuitarOne }
     { \CGuitarOne }
    }
   }
      \AGuitarOne
  }
  
   \new TabStaff {
   \AGuitarOneTab
   \repeat unfold 8 {s1}
   \BGuitarOneTab
   \CGuitarOneTab
  }
  
  
  
%{
  \new Staff \with {
   instrumentName = \markup {\column {"Rhythm" \line {"Guitar"}}}
   \clef "treble_8"
  }{
   \key e \minor
   \ARhythmGuitar
   \FourBarsEmRhythmGuitar
   \BRhythmGuitar
  }
%}

 >> % StaffGroup
 >> % FretBoards are OUTSIDE the StaffGroup
% >> % StaffGroup
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
%\override Glissando #'minimum-length = #4
%\override Glissando #'springs-and-rods = #ly:spanner::set-spacing-rods 
%\RemoveEmptyStaves 
  }
 }
\midi {}
} % score
%} % book
