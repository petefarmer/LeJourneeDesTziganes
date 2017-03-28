% - fakeWRsolo.ly - a lilypond source code file
%
% Straight, No Bender
% Bluff your way through Will's solo in Highlander Boogie
% 
% Pete Farmer, Feb. 2012
% 
% 
% Notes on layout of this file
% The first six measures uses SIX(!) voices,
% then in measure 7, all these voices stop and two new voices 
% take over. Same thing in measure 10.
% The measures in the code are off-by-one if you use
% the printed output as a reference.
% This is because the source code Label Names refer to the
% first measure as a partial, while it's coded as a full measure
% in order to work around a bug in the \partial directive.


\version "2.14.2"

\include "bend.ly" 
\include "rhyMark.ly" 

\pointAndClickOff 

\header {
   title = "Straight, No Bender"
%   subtitle = "Not Will Ray? Fake your way!"
   subsubtitle = "an excerpt from Highlander Boogie, written by John Jorgenson"
%   poet = "Pete Farmer"
%   meter = "188"
   instrument = "for Electric Guitar"
   composer = "solo by Will Ray"
   arranger = "arranged by Pete Farmer"
%   piece = "Highlander Boogie"
}
TimeKey = { \time 4/4 \key d \major }
% VoiceOneMusic works around the opening grace-note slide
VoiceOneMusic = {
     r2 r4
     {
       \slurDown
         % Looks better without the glissando here; 
	 % much better in the tab.
         % \acciaccatura c8 \glissando
          \acciaccatura c8 
           \once \override NoteHead #'X-extent = #'(0.0 . 0.0)
         \hideNotes cis4 \unHideNotes
       \slurNeutral
      } 
      
}

VoiceTwoMusic = {
       s2 s4 cis4\f\glissando 
% need to learn how to manually engrave ties      
%       \tieDown \once \override TieColumn #'X-extent = #'(1.0 . 2.0)
       \tieDown 
       e4. ~ e8 \glissando cis 
       \tieNeutral 
       
% too ugly for use...
%       \afterGrace cis \glissando {
%        \stemDown \hideNotes
%	b,16\2 
%       }
%       \unHideNotes
}

VoiceThreeMusic = {
%       s2 s4 ( e4  \glissando g4. ~ g8 \glissando e )
       s2 s4 -\tweak #'thickness #3 ( e4  \glissando g4. ~ g8 \glissando e )
% too ugly to use...
%       \afterGrace e \glissando {
%       \stemDown \hideNotes
%	e,16\1 
%       }
%       \unHideNotes
}

VoiceFourMusic = {
       s1
       s2 s8 \stemDown \once \override NoteColumn #'force-hshift = #1 \tieDown g,4. ~  \once \override NoteColumn #'force-hshift = #1 g8
     \stemDown \once \override NoteColumn #'force-hshift = #1 \tieDown a4.
     \stemDown \once \override NoteColumn #'force-hshift = #1 \tieDown b4.
}
VoiceFiveMusic = {
       s1 
       s2 s8  
       \override TextSpanner #'(bound-details left text) =
        \markup { \vcenter \normal-text "" }
       \override TextSpanner #'style = #'trill
       \override TextSpanner #'direction = #DOWN
       \once \override Voice.Slur #'stencil = #slur::draw-another-alternate-pointed-slur \bendGrace f ( \stemUp \once \override Stem #'transparent = ##t \tieUp g4.) ~  \startTextSpan \once \override Stem #'transparent = ##t g8 
       \stopTextSpan
}
VoiceSixMusic = {
       s1 s1 s8
       \once \override Voice.Slur #'stencil = #slur::draw-another-alternate-pointed-slur
       \bendGrace g (\stemUp \once \override Stem #'transparent = ##t a4.)
       \once \override Voice.Slur #'stencil = #slur::draw-another-alternate-pointed-slur
       \override TextSpanner #'(bound-details left text) =
        \markup { \vcenter \normal-text "" }
       \override TextSpanner #'style = #'trill
       \override TextSpanner #'direction = #DOWN

       \bendGrace a8 (\stemUp \once \override Stem #'transparent = ##t b4.) \startTextSpan
       \once \override Voice.Slur #'stencil = #slur::draw-another-alternate-pointed-slur
       \bendGrace b8\stopTextSpan (\stemUp \tieUp \once \override Stem #'transparent = ##t cis8) ~

       % measure 4
       \stemUp \once \override Stem #'transparent = ##t cis8 ~
       \stemUp \once \override Stem #'transparent = ##t cis8
       \stemNeutral
%       s4 e8
       
}

VoiceSevenMusic = {
     s1 s1 s2 s4 s8
     \stemDown \once \override NoteColumn #'force-hshift = #1 \tieDown cis8
     % measure 4
     \stemDown \once \override NoteColumn #'force-hshift = #1 \tieDown cis8
     \stemDown \once \override NoteColumn #'force-hshift = #1 \tieDown cis8
     <a' e> 
       \once \override Voice.Slur #'stencil = #slur::draw-another-alternate-pointed-slur
     \bendGrace cis, 
      (cis)
     e8 b8 r 
     \tieUp
     \once \override NoteHead #'style = #'harmonic-mixed b -\tweak #'thickness #3 (
     ~
     \once \override NoteHead #'style = #'harmonic-mixed b
     \tieNeutral
     \once \override NoteHead #'style = #'harmonic-mixed g
     \once \override NoteHead #'style = #'harmonic-mixed d )
     <g b> ~
     \break
     <g b>2 \glissando
     % measure 6
     <d g>4
     a'8
     \once \override Voice.Slur #'stencil = #slur::draw-another-alternate-pointed-slur
     \bendGrace g
     (a) ~
%     (a4 \times 2/3 {a8) g e}
     -\tweak #'thickness #3 (a4 ~ \stemDown \acciaccatura a g8) e 
     \stemNeutral
}
VoiceOneTab = {
     {
     r2 r4
       \once \override Voice.Slur #'transparent = ##t
         \acciaccatura c8\2\glissando 
           \once \override NoteHead #'X-extent = #'(0.0 . 0.0)
         \hideNotes cis4\2 \unHideNotes
      }
}

VoiceTwoTab = {
      {
       s2 s4 cis4\2\glissando e4.\2  e8\2 \glissando 

       \afterGrace cis\2 \glissando {
        \stemDown \hideNotes
       \once \override TabNoteHead #'transparent = ##t
	b16\2 
       }
       \unHideNotes
      }
}

VoiceThreeTab = {
      {
       s2 s4 e4\1\glissando g4.\1  g8\1 \glissando 
       \afterGrace e \glissando {
        \stemDown \hideNotes
       \once \override TabNoteHead #'transparent = ##t
	e,16\1 
       }
       \unHideNotes
      }
}

VoiceFourTab = {
       s1 s2 s8
       g4.\2
% measure 3
       r8
       a4.\2
       b4.\2
}
VoiceFiveTab = {
       s1 s2 s8
       \bendOn
       \bendGrace f\3 f8\3
       (g4\3)
% measure 3
       r8
       \bendGrace g\3 g8\3
       (a4\3)
       \bendGrace a8\3 a8\3
       (b4\3)
       \bendGrace b8\3 b8\3
      (cis8\3)
      s8 s8
       \bendGrace b\3 b8\3
      (cis4\3) (b\3)
}

VoiceSixTab = {
      \bendOn
       s1 s1 s2 s4 s8 cis8\2
       s4 <e\2 a\1>8 s4 e8\2 s8 <b\harmonic\2>
       \break
       <b\harmonic\2> <g\harmonic\3> <d\harmonic\4> <g\3 b\2> ~
       <g\3 b\2>2 \glissando
       % measure 6
       <d\3 g\2>4
       a'8\1
       \bendGrace g8\2 g\2 
       (a\2) s
       \bendGrace {\preBendRelease g8\2 (a8\2) ( } g8\2)

%     (a4 \times 2/3 {a8) g e}
        e\2
}

VoiceMeasureSevenMusic = {
s1 s1 s1
s1 s1 s1
\times 2/3 {es8( d c)} 
d c
\times 2/3 {g( a) c }
\times 2/3 {d( c) d(}
% measure 8
\times 2/3 {c) a c}
\times 2/3 {es ( c ) es ( }
\times 2/3 {c ) a ( c )}
\times 2/3 {d ( c ) d -\tweak #'thickness #3 ( }
% measure 9
\times 2/3 {c  es cis}
\times 2/3 {e  d eis}
\times 2/3 {dis fis e}
g16 e g e )
}

VoiceMeasureSevenTab = {
s1 s1 s1
s1 s1 s1
\times 2/3 {es8\3 ( d\3 c\3 )} 
d\3 c\3
\slurUp
\times 2/3 {g8\4 ( a\4 ) c\3} 
\slurNeutral
\times 2/3 {d8\3 ( c\3 ) d\3 (}
% measure 8
\times 2/3 {c\3 )  a\4 c\3}
\times 2/3 {es\3 (c\3) (es\3) (}
\times 2/3 {c\3 ) a\4  c\3 }
\times 2/3 {d\3 ( c\3 ) (d\3)  }
%measure 9
\times 2/3 {c\3  es\3 cis\3}
\times 2/3 {e\3  d\3 eis\3}
\times 2/3 {dis\3 fis\3 e\3}
g16\3 e\3 g\3 e\3 
}

VoiceMeasureTenMusic = {
s1 s1 s1
s1 s1 s1
s1 s1 s1
       \override TextSpanner #'(bound-details left text) =
        \markup { \vcenter \normal-text "" }
       \override TextSpanner #'style = #'trill
       \override TextSpanner #'direction = #DOWN
\slurUp
\acciaccatura g8 \glissando -\tweak #'thickness #3 ( a2 \startTextSpan ~
a8 \stopTextSpan \glissando g )
\times 2/3 {c c b,}
% measure 11
\slurUp
\acciaccatura d' \glissando dis \glissando e c a
\times 2/3 {a g e} 
\times 2/3 {g r a \glissando } 
% measure 12
c (cis) d b

       \override TextSpanner #'(bound-details left text) =
        \markup { \vcenter \normal-text "" }
       \override TextSpanner #'style = #'trill
       \override TextSpanner #'direction = #DOWN

\acciaccatura e \glissando fis4 e8 <e, b'> \startTextSpan ~
%measure 13
<e b'>4. <e b'>8 ~ <e b'> \stopTextSpan <e-. b g> <e-. b g>4
% measure 13,14
cis8 e <cis fis> a' ~ \startTextSpan a4 \stopTextSpan r4
cis,8 e fis a ~ \startTextSpan a4 \stopTextSpan d8 (cis)
% measure 15
% ~ cis4 a8 fis ~ fis g e es
~ cis4 \times 2/3 {a8 fis\glissando (e)}  \times 2/3 {g e\glissando (d)} fis d

% measure 16
%\grace <e c> \glissando <fis d>2. \glissando <a, f>4 \bar "||"
\slurUp
\grace <e c>  \glissando (
\override Glissando #'style = #'zigzag
\cadenzaOn
<fis d>1 ) \glissando
\hideNotes
\grace <e, b> 
\unHideNotes
\cadenzaOff
\bar "||"
}

VoiceMeasureTenTab = {
s1 s1 s1
s1 s1 s1
s1 s1 s1
\grace g8\3 \glissando a2\3 
a8\3\glissando  g\3
\times 2/3 {c\1 c\1 b,\2}
% measure 11
\slurUp
\acciaccatura d'\1 \glissando dis\1 \glissando e\1 c\1 a\2
\times 2/3 {a\2 g\2 e\3} 
\times 2/3 {g\2 r a\2 \glissando } 
% measure 12
c\2 (cis\2) d\1 b\2
\acciaccatura e\1 \glissando fis4\1 e8\1 <e,\1 b'> 
% measure 13,14
<e\1 b'\2>4. <e\1 b'\2>8 s <e b g> <e b g>4
% measure 14
cis'8\2 e\1 <cis\2 fis\1> a'\1 ~ a4\1 r4
cis,8\2 e\1  fis\1 a\1 ~ a4\1 d8\1 cis\1
% measure 15
% ~ cis4 a8 fis\2 ~ fis\2 g e\2 es\2
~ cis4 \times 2/3 {a8\1 fis\2\glissando e\2}  \times 2/3 {g\1 e\2\glissando d\2}  fis\1 d\2
% measure 16
% \grace <e\1 c\2> \glissando <fis\1 d\2>2. \glissando <a,\1 f\2>4 \bar "||"
\grace <e\1 c\2> \glissando 
<fis\1 d\2>1
\bar "||"
}


\score { 
  << 
    \new StaffGroup = "tab with traditional" << 

       \chords { s1 a1 s1 s2 s4 s8 g8 s2 d2 
                    a1 s1 s2 s4 s8 g8 s2 d2
                    a1 s1 s2 s4 s8 g8 s2 d2
                    a1 s1 s1 g2 d2
           }
     \new Staff = "guitar traditional" \relative c''' <<
       \TimeKey
       \rhythmMarkC #'"Fast Boogie" \rhyMarkIIEighths \rhyMarkSlurredTriplets 
       \tempo 4 = 188
       \new Voice { \VoiceOneMusic }
       \new Voice { \VoiceTwoMusic }
       \new Voice { \VoiceThreeMusic }
       \new Voice { \VoiceFourMusic }
       \new Voice { \VoiceFiveMusic }
       \new Voice { \VoiceSixMusic }
       \new Voice { \VoiceSevenMusic }
       \new Voice { \VoiceMeasureSevenMusic }
       \new Voice { \VoiceMeasureTenMusic }
     >>

     \new TabStaff = "guitar tab" \relative c'' <<
       \new TabVoice { \VoiceOneTab }
       \new TabVoice { \VoiceTwoTab }
       \new TabVoice { \VoiceThreeTab }
       \new TabVoice { \VoiceFourTab }
       \new TabVoice { \VoiceFiveTab }
       \new TabVoice { \VoiceSixTab }
       \new TabVoice { \VoiceMeasureSevenTab }
       \new TabVoice { \VoiceMeasureTenTab }
     >>
    >>
  >> 
    \layout {
%     line-width = #150
     \context {
       \Score
      \remove System_start_delimiter_engraver
       \override Glissando #'minimum-length = #4
       \override Glissando #'springs-and-rods =
                           #ly:spanner::set-spacing-rods
       \override Glissando #'thickness = #2

     }
     \context {
       \StaffGroup
      \remove System_start_delimiter_engraver
     }
     \context {
      \TabStaff
      \remove Clef_engraver
     }
    }
}


%% End
