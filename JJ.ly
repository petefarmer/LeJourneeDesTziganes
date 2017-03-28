JJNotes = {
% Fig. 1 begin
%\repeat volta 2 {
% measure 1
   \override Stem #'transparent = ##t \grace fis'4 \once \hideNotes g'
%   \grace fis \once \hideNotes g'
% incorrect, but avoids collision and looks okay
   \grace fis
%  \new Voice 
%  { 
%   <d g,>4 
%   <d g,>8. 
%   <d fis,>16 \staccato 
%  }
r4
b'16 a 
% measure 2
e fis e d
b e d cis
b a e fis
b2

% measure 3
<d fis d'>16 ~ <d g d'>8. 
<d fis d'>16 ~ <d g d'>8 <d fis d'>16
r8
b'16 a 
% measure 4
e fis e d
b e d e
f fis e d
cis b8. ~
b4
% } %repeat volta
% \once \override NoteColumn #'ignore-collision = ##t
% Fig. 1 end
} % JJNotes end
