% copied from http://lilypond.1069038.n5.nabble.com/Creating-new-context-3-Questions-td173645.html


\version "2.18.0" 

scale = #-3
\layout {
  \context{
    \type "Engraver_group"
    \name "RhythmicLine"
    \alias "Staff"
  
    \override VoltaBracket.staff-padding = #3
    \override Stem.neutral-direction = #UP
    \override Beam.neutral-direction = #UP
  
    \consists "Output_property_engraver"
    \consists "Font_size_engraver"
    \consists "Separating_line_group_engraver"
    \consists "Dot_column_engraver"
    \consists "Pitch_squash_engraver"
    \consists "Axis_group_engraver"
  
    \accepts "Voice"
    \defaultchild "Voice"
  
    \override TupletNumber.font-size = \scale
    \override Stem.font-size = \scale
    \override Flag.font-size = \scale
    \override NoteHead.font-size = \scale
    \override Rest.font-size = \scale
    \override NoteHead.style = #'slash
    
    squashedPosition = #0
    \override VerticalAxisGroup.staff-staff-spacing =
      #'((basic-distance . 0) (minimum-distance . 2) (padding . 1))
  
    createSpacing = ##t
    
    \description "A context like @code{RhythmicStaff} but for printing rhythms.
  Pitches are ignored; the notes are printed as slashes without any staff lines."
  
  }
  \context {
    \Score
    \accepts "RhythmicLine"
  }
}

