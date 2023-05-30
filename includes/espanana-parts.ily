\version "2.24.0"
\language "english"

\include "global-variables.ily"

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Bar 66: beat 2, right hand, upper voice, chord is gs and a.  This is from
%         parallelism from bar 64.
% Bar 76: beat 2, lower voice, e s/b ef (parallelism)

% -------------------
% --- Definitions ---
% -------------------

forceHShift = \once \override NoteColumn.force-hshift = -1

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . 0)) \etc

% --- Text
phraseValse = "Sorte de Valse"
valse = \markup { \upright \phraseValse }
phraseSous = "Sous les grenadiers"
sous = \markup { \upright \phraseSous }
phraseSeville = "Comme à Séville"
seville = \markup { \upright \phraseSeville }
phraseCarmen = "La belle Carmen et le peluquero"
carmen = \markup { \upright \phraseCarmen }
phraseDoigts = "montez sur vos doigts"
doigts = \markup { \upright \phraseDoigts }
phrasePuerta = "Puerta Maillot"
puerta = \markup { \upright \phrasePuerta }
phraseCeBon = "Ce bon Rodriguez"
ceBon = \markup { \upright \phraseCeBon }
phraseAlcade = "Ñ'est-ce pas l'Alcade?"
alcade = \markup { \upright \phraseAlcade }
phrasePlaza = "Plaza Clichy"
plaza = \markup { \upright \phrasePlaza }
phraseRue = "Rue de Madrid"
rue = \markup { \upright \phraseRue }
phraseCigar = "Les cigarières"
cigar = \markup { \upright \phraseCigar }
phraseUsted = "à la disposicion de Usted"
usted = \markup { \upright \phraseUsted }

% --- Musical terms
retenir = "retenir"
aTempo = "Au mouvement"
arret = \markup { \upright "Arrêt" }
diminez = "diminez"
ralentir = "ralentir"

% -------------
% --- Music ---
% -------------

highVoice = \relative {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 200
  s2. * 8 |
  
  \barNumberCheck 9
  s4 <e'' g>8 ( <d f> <e g>4 ) |
  <bf d>8 ( <a c> <bf! d>4 ) <a a'>-> |
  e''!4-.-> e,-. e'-. |
  e,4-.-> e'-. e,-. |
  r8 c ( e g c e ) |
  r8 a,,! ( cs e a cs ) |
  r8 f,, ( a c! f a ) |
  r8 d,,! ( fs a d fs ) |
  
  \barNumberCheck 17
  s4 <g, a>8-. q-. q4-. |
  q8-> q-. q4-. s |
  s4 <d g>8-. q-. q4-. |
  q8-> q-. q4-. s |
  s2. |
  s2. -\doigts |
  s2. * 2 |
  
  \barNumberCheck 25
  r4 ^\f <d' f>8-. q-. q4-. |
  <c ef>8-. q-. q4-. <a c> |
  r4 <f' a>8-. q-. q4-. |
  <ef g>8-. q-. q4-. <df f>4-. |
  d,!8 ( ef e f fs g |
  gs8 a bf b c cs |
  <b! d?> ^\ff ) q-. q-. q-. q-. q-. |
  \tempo 4 = 190
  <b d>4-. \slashedGrace { c8 } <g b>4-. <f a>-. |
  \tempo 4 = 180
  \slashedGrace { a8 } <e g>4-. <d? f>-. <c e>-. |
  
  \barNumberCheck 34
  \tempo 4 = 200
  b'4\rest g8-. g-. g4-. |
  af8-. af-. af4-. c-. |
  b4\rest d,8-. d-. d4-. |
  ef8-. ef-. ef4-. g-. |
  s2. * 4 |
  
  \barNumberCheck 42
  s2. * 4 |
  s2. ^\arret |
  
  \barNumberCheck 47
  r4 ^\pp f''8-. f-. f4-. |
  d8-. d-. d4-. c-. |
  r4 fs,8-. fs-. fs4-. |
  e8-. e-. e4-. d-. |
  s4 <b cs>8 q q4 |
  q8-> q q4 s4 |
  s4 <fs b>8 q q4 |
  q8-> q q4 b\rest |
  
  \barNumberCheck 55
  b,8 ( d b4 ~ b8 ) g'\rest |
  b,8 ( d b4 ~ b8 ) g'\rest |
  b,8 ( d b4 ~ b8 ) g'\rest |
  <b e fs b>8-. q-. q4-> s4 |
  r4 f'!8-. f-. f4-. |
  d8-. d-. d4-. c-. |
  b?8 ( a c a b a |
  c4 ) s2 |
  
  \barNumberCheck 63
  \clef bass
  s4 ^\p <a, cs> q |
  s4 <bf c?> r |
  s4 <fs as> q |
  s4 <g a?> r |
  \clef treble
  b'4\rest b,8 ( <c? e> b4 ) |
  b'4\rest <cs, ef>8 ( q <d g>4 ) |
  b'4\rest b,8 ( <c! e!> b4 ) |
  b'4\rest <cs, ef>8 ( q <d g>4 ) |
  
  \barNumberCheck 71
  \staffDown
  f,,8 ( bf c f bf c |
  \staffUp
  f8 bf c f bf f |
  c8 f bf c f c ) |
  <a d>4-> \slurShapeA ( <g b!> <e a> |
  <d fs>4-> <b e> <a! cs> |
  <b e>4-> <a cs> <b e> ) |
  s2. |
  
  \barNumberCheck 78
  s2. * 3 |
  <a, d g>4-> <a c d>-. <a d f>-. |
  <a c d>4-> r <a d g>-. |
  <a c d>4-> r <c' c'>-. |
  <f f'>4->
}

upperMiddle = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  s4 <c' f> q |
  s4 <c e> <cs ef>-> |
  <d a'>-.-> <a d>-. <d a'>-. |
  <a d>-.-> <d a'>-. <a d>-. |
  bf'2 ( af4 |
  g2 f4 |
  ef2 df4 |
  c2 bf4 ) |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s4 <a c f> q |
  <bf ef g>2 s4 |
  s4 <cs e! a> q |
  <b? df f? a>2-> r4 |
  s2. * 2 |
  s4 <f' g> q |
  s2. * 2 |
  
  \barNumberCheck 34
  s4 <df f> q |
  s4 <df f> <d f> |
  \staffDown
  s4 <af c> q |
  s4 <af c> <a c> |
  \staffUp
  s2. * 4 |
  
  \barNumberCheck 42
  s2. * 5 |
  
  \barNumberCheck 47
  s2. * 8 |
  
  \barNumberCheck 55
  a2 ~ a8 a\rest |
  a2 ~ a8 a\rest |
  a2 ~ a8 a\rest |
  s2. |
  s4 <a c f> q |
  s4 <a c f> q |
  s4 <a c f> q |
  s4 a8 ( c f4 ) |
  
  \barNumberCheck 63
  \clef bass
  g,2. ( |
  a4 \forceHShift bf ) r |
  e,2. ( |
  fs4 \forceHShift g ) r |
  s2. * 4 |
  
  \barNumberCheck 71
  s2. * 3 |
  <c' e>4-> \slurShapeB ( <df f> <g, b> |
  <af c>4-> <d, fs> <ef g> |
  <d fs>4-> <ef g> <d fs!> ) |
  s2. |
  
  \barNumberCheck 78
}

lowerMiddle = \relative {
  \repeat unfold 4 { <e g>4 ( <f a> <g b> ) | }
  \repeat unfold 4 { s4 a8-. a-. a-. c-. | }
  
  \barNumberCheck 9
  \staffUp
  a2. _( |
  bf2 ) s4 |
  \staffDown
  s2. * 6 |
  
  \barNumberCheck 17
  s2. * 4 |
  <c, ef>4 ( <df f> <ef! g> ) |
  <c ef>4 ( <df f> <ef! g> ) |
  <f af>4 ( <gf bf> <af c> ) |
  <f af>4 ( <gf bf> <af c> ) |
  
  \barNumberCheck 25
  s2. * 4 |
  \staffUp \voiceTwo 
  c!8 ( cs d ef e f |
  fs g gs a bf b |
  \voiceThree
  df,2_> ) c,4\rest |
  \staffDown 
  s2. * 2 |
  
  \barNumberCheck 34
  g'2.-> _\> _( |
  af4 ) <> \! s2 |
  d,?2. _\> _( |
  ef4 ) s \! s |
  g4-> a-. c-. |
  b4-> b-. a-. |
  c4-> b-. g-. |
  e2-> r4 |
  
  \barNumberCheck 42
  \repeat unfold 4 { <e g>4 ( <f a> <g b> ) | }
  s2.
  
  \barNumberCheck 47
  \clef treble
  s4 <bf' d> q |
  s4 <bf d> q |
  s4 <gs c> q |
  s4 <gs c> q |
  \clef bass
  s2. * 4 |
  
  \barNumberCheck 55
  s2. * 8 |
  
  \barNumberCheck 63
  s2. * 8 | 
  
  \barNumberCheck 71
  s2. * 7 |
  
  \barNumberCheck 78
  \tempo 4 = 120
  <d, f!>4 ( <ef g> <f a> ) |
  \tempo 4 = 112
  <d f>4 ( <ef g> <f a> ) |
  \tempo 4 = 200
  s2. |
}

lowVoice = \relative {
  \repeat unfold 4 { r4 b,8-. b-. e4-. | }
  \repeat unfold 4 { f,4 <c' f> q | }
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  f!4-> <g c> c, |
  <g' c>4-> f <g c> |
  c,4-> <g' c> f |
  <g c>4-> c, <g' c> |
  r4 g,8-. g-. c4-. |
  r4 g8-. g-. c4-. |
  r4 c8-. c-. f4-. |
  r4 c8-. c-. f4-. |
  
  \barNumberCheck 25
  <a,,! a'!>4-.-- s2 |
  s2. |
  <a a'>4-.-- s2 |
  s2. * 4 |
  <f' f'>4 <g' b? df> q |
  <df, df'>4 <f' g b> q |
  
  \barNumberCheck 34
  s2. * 4 |
  <g,, g'>4-> <a a'>-. <c c'>-. |
  <b b'>4-> q-. <a a'>-. |
  <c c'>4-> <b b'>-. <g g'>-. |
  <e e'>2 r4 |
  
  \barNumberCheck 42
  \repeat unfold 4 { r4 b''8-. b-. e4-. | }
  s2.
  
  \barNumberCheck 47
  \clef treble
  gf'2. ( |
  f2. |
  e2. |
  d2 ) r4 |
  \clef bass 
  a4-> <b e> e, |
  <b' e>4-> a <b e> |
  e,4-> <b' e> a |
  <b e>4-> e, <b'e> |
  
  \barNumberCheck 55
  <e,, e'>-> <d d'>-. <f! f'!>-. |
  <e e'>-> <d d'>-. <f f'>-. |
  <e e'>-> <d d'>-. <f f'>-. |
  <a' b e>8 q q4-> <d,, d'> ( |
  <c c'>4 ) s2 |
  <c c'>4 -_ s2 |
  <c c'>4 -_ s2 |
  <c c'>4 -_ s2 |
  
  \barNumberCheck 63
  r4 f'8-. f-. f4-. |
  e8-. e-. e4-. d-. |
  r4 d8-. d-. d4-. |
  cs8-. cs-. cs4-. b!-. |
  <gs, gs'>2 ( <a a'>4 ) |
  <b b'>2 ( <a a'>4 ) |
  <gs gs'>2 ( <a a'>4 ) |
  <b b'>2 ( <a a'>4 ) |
  
  \barNumberCheck 71
  <c,! c'!>2. ~ |
  q2 s4 |
  s2. * 5 |
  
  \barNumberCheck 78
  r4 a''8-. a-. d4-. |
  r4 a8-. a-. d4-. |
  s2. |
  c8 ( d e!4 ) c8 ( d |
  e4 ) r c8 ( d |
  e4 ) r <c, c'>-. |
  <f, f'>-> 
}

% --- Dynamics, text, and musical terms

dynamicsHigh = {
  s2. -\valse |
  s2. * 7 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. \pp |
  s2. * 7 |
  
  \barNumberCheck 25
  s4 s2 -\puerta |
  s2. * 5 |
  s8 s -\ceBon s2 |
  s4 \> s -\retenir s |
  s2 s8 s \! |
  
  \barNumberCheck 34
  s8 \p s -\aTempo s2 |
  s2. * 3 |
  s2. -\alcade
  s2. * 3 |
  
  \barNumberCheck 42
  s2. * 5 | 
  
  \barNumberCheck 47
  s4 s -\plaza s
  s2. * 7 |
  
  \barNumberCheck 55
  s2. \f
  s2. * 3 |
  s2. -\rue
  s2. * 3 |
  
  \barNumberCheck 63
  s8 s -\cigar s2
  s2. * 3 |
  s2. \p 
  s2. \<
  s2 s4 \!
  s2. |
  
  \barNumberCheck 71
  s2. -\tweak Y-offset 2 -\usted |
  s2. * 6 |
  
  \barNumberCheck 78
  s2. * 3 |
  s8 \f s -\aTempo s2 |
  s4 s2\< |
  s4. s8\! s4 |
}

dynamics = {
  s2. \pp |
  s2. * 3 |
  s4 s2 -\sous |
  s2. * 3 |
  
  \barNumberCheck 9
  s2. -\seville
  s2. * 3 |
  \break
  s4 s8 s -\carmen s4 |
  s2. * 3 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 9 |
  
  \barNumberCheck 34
  s2. * 4 |
  s2. \f |
  s2. * 3 |
  
  \barNumberCheck 42
  s2. \p 
  s2. * 4 |
  
  \barNumberCheck 47
  s2. * 8 |
  
  \barNumberCheck 55
  s2. * 8 |
  
  \barNumberCheck 63
  s2. * 8 |
  
  \barNumberCheck 71
  s2. \f |
  s2. * 3 |
  s4 s -\diminez s |
  s2. |
  s2. -\arret |
  
  \barNumberCheck 78
  s4 \p s -\ralentir s |
  s2. |
  s2. -\arret |
  s2. |
  s2. |
  s2 s4 \ff |
  s2. |
}

forceBreaks = {
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak 
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak 
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key c \major
  \time 3/4
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

musicEspanana = \score {
  \new PianoStaff <<
    \new Dynamics { \global \dynamicsHigh }
    \new Staff = "upper" \upper
    \new Dynamics { \global \dynamics }
    \new Staff = "lower" \lower
    \new Devnull \forceBreaks
  >>
  \header {
    title = ""
    subtitle = "III. Españaña"
    composer = ""
  }
}

midiEspanana = \book {
  \bookOutputName "espanana-music"
  \score {
    <<
      \new Staff ="upper" << \upper \dynamicsHigh \dynamics >>
      \new Staff = "lower" << \lower \dynamicsHigh \dynamics >>
    >>
    \midi {}
  }
}
