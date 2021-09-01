\version "2.20.0"  % necessary for upgrading to future LilyPond versions.

\header{
  title = "Christ is Born Indeed"
}

\new StaffGroup <<
  \new Staff \with {
    instrumentName = "Recorder"
    shortInstrumentName = "Rec."
  } \relative {
    \clef treble
    \time 6/8
    \repeat unfold 4 { R1 }
  }

  \new Staff \with {
    instrumentName = "Flute"
    shortInstrumentName = "Fl."
  } \relative c'' {
    \clef treble
    \time 6/8
    \repeat unfold 11 { g8[ d'] r }
    g,8 d' a
  }
>>