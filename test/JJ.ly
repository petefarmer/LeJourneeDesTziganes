\version "2.16.1"
\include "bend.ly"

\new StaffGroup <<
\new Staff <<
 \new Voice
  {
   \override Stem #'transparent = ##t \grace fis'4 \once \hideNotes g'
%   \grace fis' \once \hideNotes g'
% incorrect, but avoids collision and looks okay
   \grace fis'
  }
  \new Voice 
  { 
   <d'' g'>4 
   <d'' g'>8. 
   <d'' fis'>16 \staccato 
  }
>>

 \new TabStaff <<
  \new TabVoice 
   { 
    d''4 
    d''8. 
    d''16
   }
  \new TabVoice
   {
    \bendOn fis'16\3 (g') s8
    fis'16\3 (g') s16
    fis'\3
   }
 >>
>>
