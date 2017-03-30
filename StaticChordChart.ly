\include "predefined-guitar-fretboards.ly"
% To make a copy of the predefined table...
%#(define custom-fretboard-table-one (make-fretboard-table default-fret-table))
% But we don't want that, so...
#(define custom-fretboard-table-one (make-fretboard-table))
\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {g}
 #guitar-tuning
 "3-(;5;5;4;3;3-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {b:m}
 #guitar-tuning
 "x;2-(;4;4;3;2-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {a}
 #guitar-tuning
 "x;o;2;2;2;o;"
\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {b':m}
 #guitar-tuning
 "7-(;9;9;7;7;7-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {e:m}
 #guitar-tuning
 "x;7-(;9;9;8;7-);"


\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {c}
 #guitar-tuning
 "3;3;2;o;1;o;"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {c'}
 #guitar-tuning
 "x;3-(;5;5;5;3-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {d}
 #guitar-tuning
 "x;x;o;2;3;2;"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {d'}
 #guitar-tuning
 "x;5-(;7;7;7;5-);"


\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {bes}
 #guitar-tuning
 "6-(;8;8;7;6;6-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {aes}
 #guitar-tuning
 "4-(;6;6;5;4;4-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {e}
 #guitar-tuning
 "3-(;6;5;3;4;3-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {a':m}
 #guitar-tuning
 "5-(;7;7;5;5;5-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {fis}
 #guitar-tuning
 "5-(;8;7;5;6;5-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {e:7sus4}
 #guitar-tuning
 "x;x;9;7-(;10;7-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {e:7}
 #guitar-tuning
 "x;x;9;7-(;9;7-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {e:m7}
 #guitar-tuning
 "x;x;9;7-(;8;7-);"

\storePredefinedDiagram #custom-fretboard-table-one
 \chordmode {b'':m}
 #guitar-tuning
 "x;x;9;7-(;7;7-);"

StaticChordChart = {
 \chordmode {
 \set predefinedDiagramTable = #custom-fretboard-table-one
 g a b:m b':m b'':m
 e:m c c' d d' aes 
 bes e a':m fis
 e:7sus4 e:7 e:m7
 }
}

