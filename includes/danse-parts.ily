\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "shape-tie-column.ily"

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Bar 11, low bass voice, added an eight rest for clarity
% Bar 34, high treble voice, third beat, slur starts on first beat of bar 35
% Bar 36, low bass voice, slur end on first beat
% Bar 42, ditto
% Bar 52, high treble voice, second 8th s/b an ef
% Bar 62, high voice in bass clef, cs s/b dotted eighth

% -------------------
% --- Definitions ---
% -------------------

forceHshift = \override NoteColumn.force-hshift = #0.4
unForceHshift = { \revert NoteColumn.force-hshift }

shapeOne = \shapeTieColumn #'(
             (())
             (( (0 . -0.5) (0.5 . -0.5) (0 . -0.5) (0 . -0.25) ))
             (( (0 . -1.25) (0 . -1.25) (0 . -1) (0 . -0.5) ))
           )

shapeTwo = \shapeTieColumn #' (
             (( (0 . 0.5) (0 . 1.25) (0 . 1.25) (0 . 0.5) ))
             (( (0 . 0.5) (0 . 1) (0 . 1) (-1 . 0.25) ))
             (( (0 . 0.25) (0 . 0.5) (0 . 0.5) (0 . 0.25) ))
             (( (0 . 0.25) (0 . 0.5) (0 . 0.5) (0 . 0.25) ))
           )

moveFA = \once \override DynamicText.extra-offset = #'(-5 . -4)
moveFB = \once \override DynamicText.extra-offset = #'(-2 . -1)
moveEn = \once \override TextScript.extra-offset = #'(3 . -2.75)

% --- Musical text
lent = "Assez lent, si vous le voulez bien"
loin = "De loin et avec ennui"
leger = "très léger"
phraseLourd = "lourd"
lourd = \markup { \italic \phraseLourd }
phraseRemuez = "Remuez en dedans"
remuez = \markup { \center-column { Remuez "en dedans" } }
rougir = "Sans rougir du doigt"
dehors = "En dehors, n'est-ce pas?"
velours = "Sur du velours jauni"
continuez = "Continuez"
plein = "Plein de subtilité, si vous m'en croyez"
bruit = "Sans bruit, croyez-moi encore"
retenir = "Retenir"
ppRal = \markup { \dynamic pp \italic { ralentir (très) } }
souffle = "en un souffle"

% -------------
% --- Music ---
% -------------

highVoice = \relative {
  \set Score.tempoHideNote = ##t 
  \tempo \lent 4 = 60

  c'''8 ( [ a g a ] |
  c [ a g a ]~ |
  a2 ~ |
  a2 ) |
  
  \barNumberCheck #5
  \tempo 4 = 100
  <d, f>16-. q-. <ef g>8-. <f a> <gs c>-. |
  <d f>16-. q-. <ef g!>8-. <f a> <gs c>-. |
  <fs bf>8-. <cs f>-. <cs! f>-.-- r |
  <fs bf>8-. <cs f>-. <cs! f>-.-- r |
  
  \barNumberCheck #9
  bf16 ( cs bf! ef bf! cs! bf! ef! |
  bf16 cs bf! ef bf! cs! bf! ef! ) |
  <fs, bf fs'>2-> ~ |
  q4 r |
  
  \barNumberCheck #13
  <g c g'>4-.-- <e g a>-.-- |
  <g c g'>4-.-- <f? g b>-.-- |
  <e gs c e>2-> ~ \shapeTwo |
  q4 s |
  
  \barNumberCheck #17
  a8 ( a' ^\rougir ) g,? ( g' ) |
  f, ( f' ) e, ( e' ) |
  d16 ( a? d!8 ) d!16 ( a! d8 ) |
  g,4 ~ g8 r |
  
  \barNumberCheck #21
  \clef bass
  <g, bf>16 ( <a d> <g bf> <a d> <g bf!> <a d> <g bf> <a d>  |
  <g bf>4 ~ q8 ) r |
  ef16 ( gs fs a ef! gs! fs! a |
  fs4-> ~ fs8 ) r |
  
  % \barNumberCheck #25
  \clef treble
  \acciaccatura { e'''!8 } \moveFA <e, d'>8^\f s \acciaccatura { e'8 } <e, d'>8 s |
  \acciaccatura { e'8 } <e, d'>8 s \acciaccatura { e'8 } <e, d'>8 s |
  a,!16 ^\dehors ( gs fs8 f16 e d8 |
  cs8. b16 as8-> ) r |
  
  \barNumberCheck #29
  e'4 ( f! |
  d4 ~ d8 ) r |
  e4 ( f |
  d4 ~ d8 ) r |
  
  \barNumberCheck #33
  e'8 ^\pp ( fs ^\velours d4 |
  c8 e b4 ) |
  a8 ( bf g4 |
  f?8 af e4) |
  
  \barNumberCheck #37
  b'8\rest ^\continuez <a,! d f>-. b'\rest <a, d f>-. |
  b'8\rest <a, d f>-. b'\rest <a, d f>-. |
  b'8\rest <a, d f>-. b'\rest <a, d f>-. |
  b'8\rest <a, d f>-. b'\rest <a, d f>-. |
  
  \barNumberCheck #41
  gs''8 ^\p ^\plein ( [ as fs as ] |
  gs4 cs ) |
  fs,8 ( [ e fs e ] ) |
  <d d'>8 ( [ <c c'?> <d d'> <bf bf'> ] ) |
  
  \barNumberCheck #45
  e,16 ^\bruit ( d fs d e d fs! d |
  e16 d fs d e4 ) |
  g16 ( f! a f g f a f |
  g16 f a f g4 ) |
  
  \barNumberCheck #49
  c'8 ( af bf4 ) |
  c8 ( af bf4 ) |
  g!8 ( ef f4 ) |
  g8 ( ef f4 ) |
  
  \barNumberCheck #53
  \moveFB cs'16 ^\f ( b! a b cs b! a b |
  cs16 b! a b cs b! a b |
  df16 c! b! bf \tempo 4 = 94 a af g fs |
  \tempo 4 = 88
  f16 e ef d df \tempo 4 = 82 c b bf |
  
  \barNumberCheck #57
  \tempo 4 = 100
  a8 a' ) g, ( g' ) |
  f, ( f' ) e, ( e' ) |
  d!16 ( a? d!8 ) d!16 ( a? d8 ) |
  g,4 ~ g8 r |
  
  \barNumberCheck #61
  \staffDown
  \tempo 4 = 80
  b,?8 ( c cs4 )
  \tempo 4 = 60
  b8 c! cs8. \fermata \tempo 4 = 10 fs16 \fermata |
  \staffUp
  \tempo 4 = 100
  d'16 ( e fs g a bf c? d |
  e8-. ) s s4
}

upperMiddle = \relative {
  <c'' f a>2 ~ |
  q2 ~ |
  q2 ~ |
  q2 |
  
  \barNumberCheck #5
  s4. ef16 ( c ) |
  s4. ef16 ( c ) |
  d16 ( bf ) a ( f ) a ( f ) r8 |
  d'16 ( bf ) a ( f ) a ( f ) r8 |
  
  \barNumberCheck #9
  <fs a>8 ( [ <e? g> <fs! a> <e? g> ] |
  <fs a>8 [ <e? g> <fs! a> <e? g> ] ) |
  s2 * 2 |
  
  \barNumberCheck #13
  s2 * 2 |
  r4 a16-. ^\lourd a-. f-. a-. |
  f8-. a-. ^\remuez f4-> |
  
  \barNumberCheck #17
  a8 s g s |
  f8 s e s |
  s2 |
  r8 <a, ef'> r <a ef'!> |
  
  \barNumberCheck #21
  s2 * 4 |
  
  \barNumberCheck #25
  d'8-. [ bf-. d-. af-. ] |
  d8-. [ bf-. d-. af-. ] |
  s2 * 2 |
  
  \barNumberCheck #29
  r8 <g,? b> r <a! c!> |
  r8 <g b> r <g b> |
  r8 <g b> r <a c> |
  r8 <g b> r <g b> |
  
  \barNumberCheck #33
  \voiceThree \forceHshift
  \override Rest.X-offset = #-0.5
  s8 a' g\rest <fs! a>
  g\rest g e\rest <e g>
  \revert Rest.X-offset
  \unForceHshift \staffDown
  r8 d r <bf! d> |
  r8 c r <af! c> |
  \voiceTwo \staffUp
  
  \barNumberCheck #37
  s2 * 4 |
  
  \barNumberCheck #41
  s2 * 4 |
  
  \barNumberCheck #45
  s2 * 4 |
  
  \barNumberCheck #49
  s8 <e''? gf> r <e gf!> |
  r8 <e gf> r <e gf!> |
  s8 <b! df> r <b! df!> |
  r8 <b! df> r <b! df!> |
  
  \barNumberCheck #53
  s2 * 4 |
  
  \barNumberCheck #57
  a8 s g s |
  f8 s e s |
  s2 |
  r8 <a, ef'> r <a ef'> |
  
  \barNumberCheck #61
  \staffDown
  d,8\rest <e g> f\rest <e a>
  d8\rest <e g> f\rest <e a>
  s2 * 2 |
}

lowerMiddle = \relative {
  s2 * 2 |
  d'8 ( [ e c e ] |
  d [ e c e ] ) |
  
  \barNumberCheck #5
  s2 * 4 |
  
  \barNumberCheck #9
  s2 * 2 |
  <af, bf d>2-> ~ |
  q4 r |
  
  \barNumberCheck #13
  s2 * 4 |
  
  \barNumberCheck #17
  f8 s e s |
  d8 s c s |
  s8 <df' f> r e 
  s2 |
  
  \barNumberCheck #21
  s2 * 4 |
  
  \barNumberCheck #25
  s2 * 4 |
  
  \barNumberCheck #29
  s2 * 4 |
  
  \barNumberCheck #33
  \forceHshift \staffUp 
  e4 d |
  c4 b |
  \unForceHshift \staffDown
  a4 g |
  f4 e |
  
  \barNumberCheck #37
  s2 * 4 |
  
  \barNumberCheck #41
  \clef treble
  r8 <gs' cs> r <gs! cs!> |
  r8 <gs cs> r <gs! cs!> |
  d4 c |
  \clef bass
  bf4 a |
  
  \barNumberCheck #45
  s2 * 4 | 
  
  \barNumberCheck #49
  \clef treble
  c'8 ( af bf4 ) |
  c8 ( af bf4 ) |
  g!8 ( ef f4 ) |
  g8 ( ef f4 ) |
  \clef bass
  
  \barNumberCheck #53
  s2 * 4 |
  
  \barNumberCheck #57
  f,?8 s e s |
  d8 s c s |
  s8 <df' f> r e 
  s2 |
  
  \barNumberCheck #61
  s2 * 2 |
  \clef treble
  \moveEn c'!2 -\souffle ( |
  b!4 ~ b8 ) r |
}

lowVoice = \relative {
  <g c f>2 _\loin  ~ |
  q2 ~ |
  q2 ~ \shapeOne |
  q2 |
  
  \barNumberCheck #5
  s2 * 4 |
  
  \barNumberCheck #9
  s2 * 2 |
  r8 ds,16 ( e? g8 ) e |
  ds16 ( e g e ds!8 ) r |
  
  \barNumberCheck #13
  <d' g c>4-.-- <c g' c>-.-- |
  <d g c>4-.-- <e a d>-.-- |
  <e bf' d>2-> ~ |
  q4 s |
  
  \barNumberCheck #17
  f8 ( <b cs f> ) e, ( <a b e> ) |
  d,8 ( <g a d> ) c,? ( <f g c?> ) |
  f8 ( as ) b ( c ) |
  <c,, c'>8 r <a a'> r |
  
  \barNumberCheck #21
  f'8-. <cs' f>-. f,-. <cs'! f>-. |
  f,8-. <cs' f>-. f,-. <cs'! f>-. |
  d,8-. <a' d>-. d,-. <a' d>-. |
  c,8-. <af' c>-. c,-. <af'! c>-. |
  
  \barNumberCheck #25
  s2 * 2 |
  a8-. <e' c'>-. g,-. <d' b'>-. |
  fs,8-. <cs' fs>-. fs,!-. <cs'! fs!>-. |
  
  \barNumberCheck #29
  <e,, e'>8-. r <f f'>-. r |
  <g g'>8-. r r4
  <e e'>8-. r <f f'>-. r |
  <g g'>8-. r r4 |
  
  \barNumberCheck #33
  \staffUp \forceHshift
  e'''8 ( fs d4 |
  c8 e b4 ) |
  \staffDown \unForceHshift
  a8 ( bf g4 |
  f8 af e4 ) |
  
  \barNumberCheck #37
  <d, d'>8-. [ <c c'>-. <d d'>-. <c c'>-. ] |
  <b? b'?>8-. [ <a a'>-. <b b'>-. <a a'>-. ] |
  <d d'>8-. [ <c c'>-. <d d'>-. <c c'>-. ] |
  <b b'>8-. [ <a a'>-. <b b'>-. <a a'>-. ] |
  
  \barNumberCheck #41
  cs''4 ( ds |
  es4 ds ) |
  d!8 ( [ <fs a!> c! <fs! > ] |
  \clef bass
  bf,8 [ <d f!> a <d f> ] ) |
  
  \barNumberCheck #45
  a,8-. <e' b'?>-. a,-. <e' b'>-. |
  a,8-. <e' b'>-. a,-. <e' b'>-. |
  c8-. <g' d'>-. c,8-. <g' d'>-. |
  c,8-. <g' d'>-. c,8-. <g' d'>-. |
  
  \barNumberCheck #49
  s2 * 4 |
  
  \barNumberCheck #53
  <fs bf d!>8^>_. [ d!_. <fs bf d!>^>_. d!_. ] |
  <fs bf d!>8^>_. [ d!_. <fs bf d!>^>_. d!_. ] |
  <fs bf d!>8^> r r4 |
  s2 |
  
  \barNumberCheck #57
  f8 ( <b! cs f> ) e, ( <a b e> ) |
  d,8 ( <g a d> ) c,? ( <f g c> ) |
  f8 ( as ) b ( c ) |
  <c,, c'>8-. r <a a'>-. r |
  
  \barNumberCheck #61
  <e! e'!>8 s <a a'> s |
  <e! e'!>8 r <a a'> r |
  \clef treble
  <e''' g>2 ~ |
  q4 ~ q8 s |
}

% --- Includes musical terms
dynamics = {
  \override TextScript.Y-offset = -0.5
  s2 \pp |
  s2 * 3 |
  \break
  
  \barNumberCheck #5
  s2 -\leger |
  s2 * 3 |
  
  \barNumberCheck #9
  s4 s4 \<
  s2 |
  s2 \f |
  s2 |
  
  \barNumberCheck #13
  s2 * 4 |
  
  \barNumberCheck #17
  s2 \p |
  s2 * 3 |
  
  \barNumberCheck #21
  s2 \pp |
  s2 * 3 |
  
  \barNumberCheck #25
  s2 * 4 |
  
  \barNumberCheck #29
  s2 * 4 |
  
  \barNumberCheck #33
  s2 * 4 |
  
  \barNumberCheck #37
  s2 * 4 |
  
  \barNumberCheck #41
  s2 |
  s2 \break |
  s2 * 2 |
  
  \barNumberCheck #45
  s2 \pp |
  s2 * 3 |
  
  \barNumberCheck #49
  s2 \p |
  s2 * 3 |
  
  \barNumberCheck #53
  s4 s4 \< |
  s4 s8 \! s |
  s8 \> s -\retenir s4 |
  s8 s \! s4 |
  
  \barNumberCheck #57
  s2 \p |
  s2 * 3 |
  
  \barNumberCheck #61
  s2 -\ppRal |
  s2 |
  s8 s \> s4 |
  s16 s \! s4. |
}

forceBreaks = {
  \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 5 { s2\noBreak } s2\pageBreak
  
  \repeat unfold 4 { s2\noBreak } s4\break\noPageBreak % half a measure
  s4\noBreak \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 4 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 5 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 5 { s2\noBreak } s2\pageBreak
  
  \repeat unfold 3 { s2\noBreak } s4\break\noPageBreak % half a measure
  s4\noBreak \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 3 { s2\noBreak } s4\break\noPageBreak % half a measure
  s4\noBreak \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 3 { s2\noBreak } s2\pageBreak
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key c \major
  \time 2/4
}

upper = {
  \global
  \clef treble
  <<
    \new Voice { \voiceOne \highVoice }
    \new Voice { \voiceTwo \upperMiddle }
  >>
}

lower = {
  \global
  \clef bass
  <<
    \new Voice { \voiceThree \lowerMiddle }
    \new Voice { \voiceFour \lowVoice }
  >>
}

musicDanse = \score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics { \global \dynamics }
    \new Staff = "lower" \lower
    \new Devnull \forceBreaks
  >>
  \header {
    title = ""
    subtitle = "II. Danse Maigre"
    composer = ""
  }
}

midiDanse = \book {
  \bookOutputName "danse-music"
  \score {
    <<
      \new Staff ="upper" << \upper \dynamics >>
      \new Staff = "lower" << \lower \dynamics >>
    >>
    \midi {}
  }
}
