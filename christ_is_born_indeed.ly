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
      \key g \major
      \clef treble
      \time 6/8
      \repeat unfold 4 { R2. }
      \break
      % 5
      r8\f bes4 bes bes8~
      bes8 bes8 bes4 b4
      fis2 r4
      r8 e4~ e8 b'4
      \break
      
      % 9
      e,2 r4
      \repeat unfold 3 { r8 fis16( g-.) }
      r8 fis16([ g] b8-.[) fis16( g] b8-.[) fis16( g]
      \time 3/8
      b8-.)[ fis16( g] b8-.)
      \break
      
      % 13
      \time 6/8
      \repeat unfold 5 { R2. }
      % 18
      r2 bes4
      % 19
      bes4 bes bes~
      % 20
      bes4 r b
      % 21
      fis2 r4
      % 22
      r8 e4. b'4
      % 23
      e,4. r4.
      % 24
      r8 a4. fis4
      \break

      % 25
      \repeat unfold 3 { r8 fis16([ g]) }
      % 26
      r8 fis16([ g] b8-.[) fis16( g] b8-.[) fis16( g]
      % 27
      \time 8/8
      b8-.[) fis16( g] b8-.[) fis16( g] b8-.[) fis16( g] b8-.[) fis16( g])
      \break

      % 28
      \time 6/8
      gis2.(
      % 29
      a2) a16-. a-. a-. a-.
      % 30
      r8 bes4.( a4)
      % 31
      r8 \grace c8( bes4. a4)
      \break
      
      % 32
      r8 b4.( bes4)
      % 33
      r8 \grace { b16( c } b4. bes4)
      % 34
      r8 b r b8 r bes
      % 35
      r bes r bes r f16-. bes-.
      \break

      % 36
      c2 c16-. c-. c-. c-.
    } 
    % End Recorder

    \new Staff \with {
      instrumentName = "Flute"
      shortInstrumentName = "Fl."
      midiInstrument = #"flute"
    } \relative c'' {
      \key g \major
      \clef treble
      \time 6/8
      \repeat unfold 11 { g8-.[ d'-.] r }
      \repeat unfold 4 { g,-. d'-. a }
      % 9
      \repeat unfold 4 { g-.[ d'-.] r }
      \repeat unfold 4 { g,-. d'-. a }
      % 13
      \repeat unfold 4 { g-.[ d'-.] r }
      \repeat unfold 6 { g,-. d'-. a }
      g8-. r g-. r g-. r
      \repeat unfold 6 { g-.[ d'-.] r }
      \repeat unfold 5 { g,-. d'-. a }
      \repeat unfold 3 { g-.[ d'-.] r }
      \repeat unfold 4 { g,-.[ d'-. a] }
    }
    % End Flute

    \new Staff \with {
      instrumentName = "Violin"
      shortInstrumentName = "Vl."
      midiInstrument = #"violin"
    } \relative c'' {
      \key g \major
      \repeat unfold 4 { R2. }
      % 5
      <g d>2.->\ppp~
      <g d>2 r4
      <g d>2.->~
      <g d>4. r4.
      % 9
      <g d>2.->~
      <g d>2 r4
      <g d>2.~
      <g d>4.(
      % 13
      <g d g'>2.)~
      <g d g'>2.
      % 15
      r4.
      <g e>->~
      <g e>2.~
      \break

      % 17
      <g e>4. <g ees>4.
      % 18
      <g d>2.~
      % 19
      <g d>2.

      % 20
      r4. <g e>4.~
      % 21
      <g e>4. r4.
      % 22
      r4. <fis d>4.~
      % 23
      <fis d> <f>~
      % 24
      <f> r
      % 25
      <dis' dis,>( <dis d,>
      % 26
      <d d,>)
    }
    % End Violin

    \new DrumStaff \with {
      instrumentName = "High Hat"
      shortInstrumentName = "HH."
    } \drummode {
      \repeat unfold 4 { R2. }
      % 5
      r8 hihat8[ hh hh] hh16 hh hh8
      % 6
      hh8[ hh8] openhihat[ hh] hh16[ hh hh hh]
      % 7
      openhihat8.[ hh16] hh8[ openhihat]
      \repeat unfold 3 { hh[ openhihat] }
      hh16 hh hh8
      % 9
      openhihat8[ hh16 hh hh8] openhihat[ hh] openhihat[
      % 10
      hh8] openhihat[ hh8] openhihat[ hh16 hh hh8]
      % 11
      hh[ hh16 hh hh8] openhihat[ hh16 hh16 hh8]
      % 12
      openhihat r8 hh16 hh32 hh
      % 13
      openhihat8[ hh8 hh hh ] hh16 hh hh8
      % 14
      openhihat8[ hh16 hh hh8] hh[ hh16 hh hh8]
      % 15
      openhihat[ hh] hh[ hh] openhihat[ hh]
      % 16
      openhihat[ hh16 hh hh8] openhihat8[ hh16 hh hh8]
      % 17
      hh[ hh hh openhihat] r8 hh16 hh32 hh
      % 18
      openhihat8[ hh16 hh hh8] hh[ openhihat] hh[ openhihat]
      % 19
      hh16[ hh hh hh] openhihat8[ hh16 hh openhihat8]
      % 20
      r8 openhihat[ hh] openhihat[ hh16 hh hh8]
      % 21
      openhihat8[ hh16 hh hh8] openhihat[ hh] openhihat[
      % 22
      hh] openhihat[ hh] openhihat[ hh16 hh hh8]
      % 23
      openhihat8[ hh16 hh hh8] openhihat[ hh] openhihat[
      % 24
      hh] openhihat[ hh] openhihat[ hh16 hh16 hh16 hh16]
      % 25
      hh8[ hh16 hh] openhihat8[ hh] openhihat openhihat
      % 26
      openhihat[ hh16 hh hh8] openhihat[ hh16 hh hh8]
      % 27
      openhihat[ hh16 hh hh8] openhihat[ hh16 hh hh hh] hh[ hh hh hh]
      \break

      % 28
      openhihat4 r2
      % 29
      R1 * 6/8 * 3
    }
    % End Hi Hat
    
    \new DrumStaff \with {
      instrumentName = "Woodblock"
      shortInstrumentName = "Wb."
    } \drummode {
      R1 * 6/8 * 11
      % 12
      R1 * 3/8
      % 13
      R1 * 6/8 * 14
      % 27
      R1 * 8/8
      % 28
      wbl8->[ wbl16 wbl wbl8] wbl-> wbl wbl
      % 29
      wbl->[ wbl16 wbl wbl wbl] wbl8-> wbl16 wbl wbl wbl
      % 30
      wbl8->[ wbl wbl->] wbl[ wbl16 wbl16 wbl8]
      % 31
      wbl->[ wbl16 wbl wbl8] wbl->[ wbl16 wbl wbl wbl]
      \break

      % 32
      wbl8->[ wbl wbl] wbl->[ wbl16 wbl wbl8]
      % 33
      wbl8->[ wbl wbl->] wbl[ wbl-> wbl]
      % 34
      wbl8->[ wbl16 wbl wbl8] wbl->[ wbl wbl]
      % 35
      wbl8->[ wbl16 wbl wbl wbl] wbl8->[ wbl16 wbl wbl wbl]
      \break

      % 36
      \repeat unfold 5 { wbl8->[ wbl16 wbl wbl8] }
      wbl8->[ wbl16 wbl wbl wbl]
    }
    % End Toms
  >>


  \layout {}
  \midi {
    \tempo 4 = 128
  }
}