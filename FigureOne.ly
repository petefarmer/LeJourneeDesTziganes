FigureOne = \relative c' { 
<<
{
   \autoBeamOff
   \slurDown \acciaccatura fis'8 _\markup { \teeny "I" } \once \hideNotes g4
   \slurDown \stemUp \acciaccatura fis8 \stemDown \once \hideNotes g8.
   \autoBeamOn
   s16
   s2
}
\\
{
   \autoBeamOff
   \stemUp
   <d' g,>4 
   <d g,>8. 
   \dotsUp
   <d fis,>8. 
   \autoBeamOn
   b16 a 
   e fis e d 
%measure 2
   b e d cis 
   b a e fis 
   b4 ~ b4
}
>>
<<
{
   \autoBeamOff
   \slurDown \acciaccatura fis'8 \once \hideNotes g4
   \slurDown \stemUp \acciaccatura fis8 \stemDown \once \hideNotes g8.
   s16
   s2
   \autoBeamOn
}
\\
{
   \autoBeamOff
   \stemUp
   <d' g,>4 
   <d g,>8. 
   \dotsUp
   <d fis,>8.
   \autoBeamOn
   b16 a 
   e fis e d
% measure 2
   b e d e
   f fis e d
   cis b ~ b4.
}
>>
}

