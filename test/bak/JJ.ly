\version "2.16.1"
\include "bend.ly"

\new StaffGroup <<

\new Staff <<
 \new Voice <<
 { \autoBeamOff d''4 d''8. d''16 r2  } 
 \\
 { \autoBeamOff \grace fis'4 g'4  \grace fis' g'8. fis'16 s2 }
 >>
>>


\new TabStaff <<
 \new TabVoice <<
 { d''4 d''8. d''16 r2  } 
 \\
 
% { \bendOn \grace fis'4\3 (g'4\3)  \grace fis'\3 (g'8.\3) fis'16\3 s2 }
 { \bendOn \grace fis'4\3 (g'\3)  \grace fis'\3 (g'8.\3) fis'16\3 s2 }
 >>
>>

>>
