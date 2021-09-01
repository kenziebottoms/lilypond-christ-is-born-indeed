\version "2.20.0"  % necessary for upgrading to future LilyPond versions.

\header{
  title = "Christ is Born Indeed"
}

\new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl."
} \relative {
  \clef treble
  \time 6/8
  \repeat unfold 11 { g'8[ d'] r }
  g,8 d' a
}
