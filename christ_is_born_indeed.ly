\version "2.20.0"  % necessary for upgrading to future LilyPond versions.

\header{
  title = "Christ is Born Indeed"
}

\new StaffGroup <<
  \new Staff \with {
    instrumentName = "Recorder"
    shortInstrumentName = "Rec."
  } \relative c''' {
    \clef treble
    \time 6/8
    \repeat unfold 3 { R1 }
    \break
    
    r8 bes4 bes bes8(
    bes8) bes4. b4
    ges2 r4
    r8 e4( e8) b'4
    \break

    e,2 r4
    \repeat unfold 3 { r8 fis16( g) }
    r8 fis16([ g] b8[) fis16( g] b8[) fis16( g]
    \time 3/8
    b8)[ fis16( g] b8)
    \break
    
    \time 6/8
    R1 R1
  }

  \new Staff \with {
    instrumentName = "Flute"
    shortInstrumentName = "Fl."
  } \relative c'' {
    \clef treble
    \time 6/8
    \repeat unfold 11 { g8[ d'] r }
    \repeat unfold 4 { g,8 d' a }
    \repeat unfold 4 { g8[ d'] r }
    \repeat unfold 4 { g,8 d' a }
    \repeat unfold 5 { g8[ d'] r }
  }
>>