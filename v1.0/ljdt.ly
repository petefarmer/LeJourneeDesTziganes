% - ljdt.ly - a lilypond source code file

% Lilypond likes UTF-8 encoded files. Using vim, under OSX, you can
% force saving as UTF-8 by including an extended ASCII char somewhere
% in the file, hence -> é 
%
% Pete Farmer, Oct, 2012
% 
% Revision history:

\version "2.14.2"

%\include "rhyMark.ly" 
%\include "ig-intro-rests.ly"
\include "JJ.ly"
%\include "JD.ly"
%\include "WR.ly"
%\include "Bass.ly"
%\include "Piano.ly"
%\include "Drums.ly"
\include "articulate.ly"
\include "rhythmGuitar.ly"
%\include "strumGuitar.ly"

\pointAndClickOff 


%=========================================
%\version "2.15.13"

date = #(strftime "%d/%m/%Y" (localtime (current-time)))

\paper {

% #(set-paper-size "a3")
%      #(set-default-paper-size "a3" 'landscape)
%      annotate-spacing = ##t
% paperheight = 13.0 \in
% paperwidth = 11.0 \in

%% cf. ly/titling-init.ly
#(define (not-last-page layout props arg)
(if (and (chain-assoc-get 'page:is-bookpart-last-page props #f)
(chain-assoc-get 'page:is-last-bookpart props #f))
empty-stencil
(interpret-markup layout props arg)))

oddHeaderMarkup = \markup \fill-line { " " }
evenHeaderMarkup = \markup \fill-line { " " }
oddFooterMarkup = \markup \fill-line { \column {
\fontsize #-1
\on-the-fly #not-last-page \on-the-fly #not-first-page \fromproperty #'page:page-number-string 
\on-the-fly #last-page \fromproperty #'header:tagline
} }
evenFooterMarkup = \markup \fill-line { \column {
\fontsize #-1
\on-the-fly #not-last-page \on-the-fly #not-first-page \fromproperty #'page:page-number-string 
\on-the-fly #last-page \fromproperty #'header:tagline
} }
}

\header {
title = "La Journee des Tziganes"
subtitle = "DRAFT"
subsubtitle = "v0.01"
composer = "John Jorgenson"
%copyright = \markup { \char ##x00A9 "Jorgensongs" }
%copyright = \markup { \char ##x00A9 "Copyright Jorgensongs 2012" }
copyright = "\char ##x00A9 Copyright Jorgensongs 2012"
tagline = \markup {
\fontsize #-3.5 {
\override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { 
\line {
Engraved on \date with 
\line {
LilyPond \simple #(lilypond-version) (http://lilypond.org/) 
}
}
}
}
}
}

%=========================================
TimeKey = { \time 4/4 \key e \minor }

global = {
 \TimeKey
% \rhythmMarkC #'"Allegro" \rhyMarkIIEighths \rhyMarkSlurredTriplets 
}

\score {
 \unfoldRepeats
% \articulate
 \new StaffGroup <<


  \new RhythmicStaff << \set RhythmicStaff.instrumentName = #"Strum" 
                \global
		\RhythmStrum
             >>

  \new Staff << \set Staff.instrumentName = #"Melody" 
                \tempo 4 = 120
                \global
		\JJNotes
             >>
%{
  \new Staff << \set Staff.instrumentName = #"Rhythm" 
                \tempo 4 = 120
                \global
		\RhythmNotes
             >>


  \new Staff << \set Staff.instrumentName = #"Guitar 2" 
                \global \JDNotes 
             >>

  \new Staff << \set Staff.instrumentName = #"Guitar 3" 
                \global \WRNotes 
	     >>


  \new Staff << \set Staff.instrumentName = #"Bass" 
                \global \BassNotes 	
             >>


  \new PianoStaff << 
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper"  \PianoUpper
    \new Staff = "lower"  \PianoLower
  >>
%}
%{
  \new DrumStaff <<
    \Drums
  >>
%}
 >>
 \layout {
  \context {
   \Staff \RemoveEmptyStaves
  }
 }
 \midi {}
}
\markup { \char ##x00A9 "Copyright Jorgensongs 2012" }

