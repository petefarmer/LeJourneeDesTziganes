\version "2.16.0"
\include "bend.ly"
%\include "articulate.ly"
%\include "rhyMark.ly" 
\include "Chords.ly"
\include "Rests.ly"

\include "JJ.ly"
%{
%\include "JD.ly"
%\include "WR.ly"
%\include "jj-tab.ly"
%\include "jd-tab.ly"
%\include "wr-tab.ly"
%\include "Piano.ly"
%\include "Bass.ly"
%\include "Drums.ly"
%}

\pointAndClickOff 


\version "2.16.0"

TimeKey = { \time 4/4 \key e \minor }

global = {
 \TimeKey
% \rhythmMarkC #'"Allegro" \rhyMarkIIEighths \rhyMarkSlurredTriplets 
}
\paper {
 #(set-paper-size "a4" )
% annotate-spacing = ##t

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
% \unfoldRepeats
% \articulate
 \new StaffGroup <<
 \key e \minor
% \new ChordNames { \Chords }

%{
 \new Staff << \set Staff.instrumentName = #"Rests" 
                \tempo 4 = 120
                \global
                \Rests 
             >>
%}	     
  \new Staff << \set Staff.instrumentName = #"Guitar 1" 
%                \global
                \JJNotes 
             >>
%{
  \new TabStaff <<
                 \new TabVoice \with { \revert TextScript #'stencil }
                 \jj-tab
                >>

  \new Staff << \set Staff.instrumentName = #"Guitar 2" 
%                \tempo 4 = 120
                \global
		#{remove-grace-property 'Voice 'Stem 'Beam)
                \JDNotes 
             >>
  \new TabStaff <<
                 \jd-tab
                >>
		

  \new Staff << \set Staff.instrumentName = #"Guitar 3" 
%                \tempo 4 = 120
                \global
                \WRNotes 
             >>
  \new TabStaff <<
                 \wr-tab
                >>


  \new PianoStaff << 
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper"  \PianoUpper
    \new Staff = "lower"  \PianoLower
  >>

  \new Staff << \set Staff.instrumentName = #"Bass" 
%                \tempo 4 = 120
                \global \BassNotes 	
             >>

  \new DrumStaff << \set Staff.instrumentName = #"Drums"
    \Drums
  >>
%}

 >>
 \layout {
  \context {
%   \Staff \RemoveEmptyStaves
%     \override Glissando #'style = #'zigzag
%     \override Glissando #'style = #'trill
%     \override Glissando #'(bound-details right Y) = #-2
  }
  \context {
   \TabStaff \RemoveEmptyStaves
   \remove Clef_engraver
  }
  \context {
   \DrumStaff \RemoveEmptyStaves
  }
  \context {
   \ChordNames \override ChordName #'font-size = #-1
  }
%  \override Score.MetronomeMark #'direction = #DOWN
 }
} % score
} % book
