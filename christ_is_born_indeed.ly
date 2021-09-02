\version "2.20.0"  % necessary for upgrading to future LilyPond versions.

\header{
  title = "Christ is Born Indeed"
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Recorder"
      shortInstrumentName = "Rec."
      midiInstrument = #"recorder"
    } \relative c''' {
      \clef treble
      \time 6/8
      \repeat unfold 4 { R2. }
      \break
      
      r8\f bes4 bes bes8~
      bes8 bes8 bes4 b4
      ges2 r4
      r8 e4~ e8 b'4
      \break

      e,2 r4
      \repeat unfold 3 { r8 fis16( g-.) }
      r8 fis16([ g] b8-.[) fis16( g] b8-.[) fis16( g]
      \time 3/8
      b8-.)[ fis16( g] b8-.)
      \break
      
      \time 6/8
      \repeat unfold 2 { R2. }
    }

    \new Staff \with {
      instrumentName = "Flute"
      shortInstrumentName = "Fl."
      midiInstrument = #"flute"
    } \relative c'' {
      \clef treble
      \time 6/8
      \repeat unfold 11 { g8-.[ d'-.] r }
      \repeat unfold 4 { g,8-. d'-. a }
      \repeat unfold 4 { g8-.[ d'-.] r }
      \repeat unfold 4 { g,8-. d'-. a }
      \repeat unfold 5 { g8-.[ d'-.] r }
    }

    \new Staff \with {
      instrumentName = "Violin"
      shortInstrumentName = "Vl."
      midiInstrument = #"violin"
    } \relative c'' {
      \repeat unfold 4 { R2. }
      <g d>2.->\ppp~
      <g d>2 r4
      <g d>2.->~
      <g d>4. r4.
      <g d>2.->~
      <g d>2 r4
      <g d>2.~
      <g d>4.(
      g'2.)
    }
  >>

  \layout {}
  \midi {
    \tempo 4 = 128
  }
}