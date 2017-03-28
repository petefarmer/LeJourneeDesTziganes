FigureOne = \relative c' { 
<<
{
%   \override Stem #'transparent = ##t 
%   \grace fis4 \once \hideNotes g
%   \grace fis4 \once \hideNotes g
%   \slurDown
   \acciaccatura fis8 (g4)
   \acciaccatura fis8 (g4)
   s2
}
\\
{
   \stemUp
   <d' g,>4 
   <d g,>8. 
   <d fis,>16 \staccato 
   b8\rest
   b16 a 
   e fis e d 
%measure 2
   b e d cis 
   b a e fis 
   b2
}
>>
<<
{
%   \override Stem #'transparent = ##t 
%   \grace fis4 \once \hideNotes g
%   \grace fis4 \once \hideNotes g
   \slurDown
   \acciaccatura fis'8 (g4)
   \acciaccatura fis8 (g4)
   s2
}
\\
{
   \stemUp
   <d' g,>4 
   <d g,>8. 
   <d fis,>16 \staccato 
   b8\rest
   b16 a 
   e fis e d
% measure 2
   b e d e
   f fis e d
   cis b8. ~ b4
}
>>
}

