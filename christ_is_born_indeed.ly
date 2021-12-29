\version "2.20.0"  % necessary for upgrading to future LilyPond versions.

#(set-default-paper-size "b4")

\header{
  title = "Christ is Born Indeed"
}

\score {
  \layout {
    \context {
      \RemoveEmptyStaffContext
      \override VerticalAxisGroup.remove-first = ##t
    }
  }

  \midi {
    \tempo 4 = 124
  }

  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Recorder"
      shortInstrumentName = "Rec."
      midiInstrument = #"recorder"
    } \relative c''' {
      \override Score.BarNumber.break-visibility = ##(#f #t #t)
      \set Score.markFormatter = #format-mark-box-alphabet

      \key g \major
      \clef treble
      \time 6/8
      \repeat unfold 4 { R2. }
      \break

      % 5 // A
      \mark \default
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
      
      % 13 // B
      \mark \default
      \time 6/8
      \repeat unfold 5 { R2. }

      % 18 // C
      \mark \default
      r2 bes4
      % 19
      bes4 bes bes~
      % 20
      bes8 r4. b4
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

      % 28 // D
      \mark \default
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
      % 37
      r4 cis8 r cis r
      % 38
      \grace { c16( cis } c8) r cis8 r cis r
      % 39
      \grace { c16( cis } c8) r c r cis r
      \break
      
      % 40 // E
      \mark \default
      d2.
      r2.
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

      % 13 // B
      \repeat unfold 4 { g-.[ d'-.] r }
      \repeat unfold 6 { g,-. d'-. a }
      g8-. r g-. r g-. r
      \repeat unfold 6 { g-.[ d'-.] r }
      \repeat unfold 5 { g,-. d'-. a }
      \repeat unfold 3 { g-.[ d'-.] r }
      % 26
      \repeat unfold 4 { g,-.[ d'-. a] }
      g-. r 
      \break

      % 28 // D
      b8-. a-. r bes-. a-. r
      % 29
      bes-. a-. r bes-. b-. r
      % 30
      bes-. b-. r b-. c-. r 
      % 31
      b-. c-. r c-. cis-. r
      % 32
      c-. cis-. r cis-. d-. r
      % 33
      cis-. d-. r dis-. d-. r
      % 34
      dis-. d-. r d-. c-. r
      % 35
      d-. c-. r c-. b-. r
      \break
      
      % 36
      c-. b-. r b-. bes-. r
      % 37
      b-. bes-. r bes-. a-. r
      % 38
      a-. bes-. r bes-. a-. r
      % 39
      a8-.[ bes-.] bes8-.[ a-.] bes8-.[ a-.]

      % 40 // E
      \repeat unfold 10 { g8-.[ d'-.] r }
      \repeat unfold 4 { g,-.[ d'-. a-.] }
      % 47
      g-. r4
      \repeat unfold 3 { g8-.[ d'-.] r }
      % 49
      \repeat unfold 5 { g,-.[ d'-. a-.] }
      \repeat unfold 4 { g8-.[ d'-.] r }
      \repeat unfold 4 { g,-.[ d'-. a-.] }
      \repeat unfold 3 { g8-.[ d'-.] r }
      % 57
      \repeat unfold 4 { g,-.[ d'-. a-.] }
      % 59
      \repeat unfold 2 { g8-.[ d'-.] r }
    }
    % End Flute

    \new Staff \with {
      instrumentName = "Alto Recorder"
      shortInstrumentName = "A. R."
      midiInstrument = #"recorder"
    } \relative c' {
      \key g \major
      R1 * 6/8 * 11
      % 12
      R1 * 3/8
      
      % 13 // B
      \time 6/8
      d2.~\ppp
      d
      % 15
      r4. e4.->~
      e2.~

      % 17
      e4.( ees
      % 18 // C
      d2.)~
      % 19
      d2.
      % 20
      r4. e~
      
      % 21
      e2.
      % 22
      r4. fis4.~
      % 23
      fis4. f~
      % 24
      f4. r

      % 25
      dis4.( d
      d2.)~

      % 27
      \time 8/8
      d4. dis4. d4~

      % 28 // D
      d4. dis~
      % 29
      dis4. e~
      % 30
      e f~
      % 31
      f fis~

      % 32
      fis g~
      g fis~
      fis f~
      f e~

      % 36
      e dis~
      dis d~
      d dis~
      dis d~

      % 40 // E
      d2.
      r4. d^~\p
      % 42
      d2.~
      d4. e~
      \break
      
      % 44
      e2.~
      % 45
      e4 r8 fis4.~
      % 46
      fis4. f~
      % 47
      f r4.
      \break

      % 48
      <<
        \relative {
          % 48
          dis'2.
          % 49
          d~
          % 50
          d~
          % 51
          d4.
        }
        \\
        \relative {
          % 48
          g4. bes~
          % 49
          a2.
          % 50
          g~
          % 51
          g4.
        }
      >>
      r4.
      \break
    }
    %  End Alto Recorder
    
    \new Staff \with {
      instrumentName = "Tenor Recorder"
      shortInstrumentName = "T. R."
      midiInstrument = #"recorder"
    } \relative c' {
      \key g \major
      R1 * 6/8 * 11
      % 12
      R1 * 3/8
      
      % 13 // B
      \time 6/8
      d2.~\ppp
      d
      % 15
      r4. e4.->~
      e2.~

      % 17
      e4.( ees
      % 18 // C
      d2.)~
      % 19
      d2.
      % 20
      r4. e~
      
      % 21
      e2.
      % 22
      r4. fis4.~
      % 23
      fis4. f~
      % 24
      f4. r

      % 25
      dis4.( d
      d2.)~

      % 27
      \time 8/8
      d4. dis4. d4~

      % 28 // D
      d4. dis~
      % 29
      dis4. e~
      % 30
      e f~
      % 31
      f fis~

      % 32
      fis g~
      g fis~
      fis f~
      f e~

      % 36
      e dis~
      dis d~
      d dis~
      dis d~

      % 40 // E
      d2.
      r4. d^~\p
      % 42
      <d g,>2.~
      <d g,>4. <e g,>~
      \break
      
      % 44
      <e g,>2.~
      % 45
      <e g,>4 r8 <fis a,>4.~
      % 46
      <fis a,>4. <f bes,>~
      % 47
      <f bes,> r4.
      \break

      % 48
      <<
        \relative {
          % 48
          dis'2.
          % 49
          d~
          % 50
          d~
          % 51
          d4.
        }
        \\
        \relative {
          % 48
          g4. bes~
          % 49
          a2.
          % 50
          g~
          % 51
          g4.
        }
      >>
      r4.
      \break
    }
    %  End Tenor Recorder

    \new Staff \with {
      instrumentName = "Violin"
      shortInstrumentName = "Vl."
      midiInstrument = #"violin"
    } \relative c'' {
      \key g \major
      \repeat unfold 4 { R2. }
      % 5 // A
      <g d>2.->\ppppp~
      <g d>4. r
      <g d>2.->~
      <g d>4. r
      % 9
      <g d>2.->~
      <g d>4. r
      <g d>2.~
      % 12
      \time 3/8
      <g d>4.

      % 13 // B
      <<
        \relative {
          \stemUp g''4.\ppppp d8 g4~
          % 14
          g2.
        }
        \\
        \relative {
          <g' d>2._~
          % 14
          <g d>2.
        }
      >>
      % 15
      r4.
      <g e>->~
      <g e>2.~
      \break

      % 17
      <g e>4. <g ees>4.
      % 18 // C
      <g d>2.~
      % 19
      <g d>2.

      % 20
      r4. <g e>~
      % 21
      <g e>2.
      % 22
      r4. <fis d>4.~
      % 23
      <fis d> <f>~
      % 24
      <f> r
      % 25
      <dis' dis,>2.(
      % 26
      <d d,>)
    }
    % End Violin

    \new DrumStaff \with {
      instrumentName = "High Hat"
      shortInstrumentName = "HH."
    } \drummode {
      \repeat unfold 4 { R2. }
      % 5 // A
      r8\ppp hihat8[ hh hh] hh16 hh hh8
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
      openhihat r8 hh16\< hh32 hh\!

      % 13 // B
      openhihat8[\mp hh8 hh hh ] hh16 hh hh8
      
      % 14
      openhihat8[ hh16 hh hh8] hh[ hh16 hh hh8]
      % 15
      openhihat[ hh] hh[ hh] openhihat[ hh]
      % 16
      openhihat[ hh16 hh hh8] openhihat8[ hh16 hh hh8]
      % 17
      hh[ hh hh openhihat] r8 hh16 hh32 hh

      % 18 // C
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
      \time 8/8
      openhihat[ hh16 hh hh8] openhihat[ hh16 hh hh hh] hh[ hh hh hh]
      \break

      % 28 // D
      \time 6/8
      openhihat4 r2
      % 29
      R1 * 6/8 * 11
      \break

      % 40 // E
      r2 r8 hh16\<\ppp hh32 hh\!
      % 41
      openhihat8[\pp hh16 hh hh8 hh] openhihat8[ hh]
      % 42
      openhihat8[ hh16 hh hh hh] openhihat8[ hh16 hh openhihat8]
      % 43
      r8 openhihat8[ hh] openhihat[ hh16 hh hh8]
      \break

      % 44
      openhihat8[ hh16 hh hh8] openhihat[ hh] openhihat[
      % 45
      hh] openhihat[ hh] openhihat[ hh16 hh hh8]
      % 46
      openhihat[ hh16 hh hh8] openhihat[ hh] openhihat[
      % 47
      hh] openhihat[ hh] openhihat[ hh16 hh hh hh]
      \break

      % 48
      hh8[ hh16 hh] openhihat8[ hh openhihat openhihat]
      % 49
      openhihat[ openhihat16 openhihat] openhihat[ openhihat openhihat8] r4
    }
    % End Hi Hat
    
    \new DrumStaff \with {
      instrumentName = "Woodblock"
      shortInstrumentName = "Wb."
    } \drummode {
      R1 * 6/8 * 11
      % 12
      R1 * 3/8
      
      % 13 // B
      R1 * 6/8 * 14

      % 27
      R1 * 8/8
      % 28
      wbl8->[\mp wbl16 wbl wbl8] wbl-> wbl wbl
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
      % 39
      wbl16[-> wbl wbl wbl] wbl->[ wbl wbl wbl] wbl[-> wbl wbl wbl]
    }
    % End Toms

    \new DrumStaff \with {
      instrumentName = "Bass Drum"
      shortInstrumentName = "B.D."
    } \drummode {
      R1 * 6/8 * 11
      % 12
      R1 * 3/8
      
      % 13 // B
      R1 * 6/8 * 14

      % 27
      R1 * 8/8

      % 28 // D
      R1 * 6/8 * 12

      % 40 // E
      R1 * 6/8 * 9
      % 49
      r8 bd4-> bd4-> r8
    }
    % End Bass Drum
  >>
}