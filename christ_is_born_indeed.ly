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

    \new DrumStaff \with {
      instrumentName = "High Hat"
    } \drummode {
      \repeat unfold 4 { R2. }

      % 5
      r8 hihat8[ hh hh] hh16 hh hh8
      % 6
      hh8[ hh8] openhihat[ hh] hh16[ hh hh hh]
      % 7
      openhihat8.[ hh16 hh8] openhihat
      \repeat unfold 3 { hh[ openhihat] }
      hh16 hh hh8
      % 9
      openhihat8[ hh16 hh hh8] openhihat hh openhihat
      % 10
      hh8[ openhihat hh8 openhihat] hh16[ hh hh8]
      % 11
      hh[ hh16 hh hh8] openhihat[ hh16 hh16] hh8
      % 12
      openhihat r8. hh32 hh

      % 13
      openhihat8[ hh8 hh hh ] hh16 hh hh8
      % 14
      openhihat8[ hh16 hh hh8] hh[ hh16 hh hh8]
      % 15
      openhihat[ hh]
    }
  >>

  \layout {}
  \midi {
    \tempo 4 = 128
  }
}