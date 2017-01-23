\include "predefined-guitar-fretboards.ly"
\header{
	title = "Georgia On My Mind"
	composer = "Words by Stuart Gorrell"
	arranger = "Music by Hoagy Carmichael"
}

mychords = { \chordmode { 
\repeat volta 2 {
		f1 a1:7 des1/aes d8:3-.5-.7/g g4.:7 
		des8:7/aes c4.:7/g f1 a1:7 d2:7 d4:7.5+ d4:7
		g2:9 c2:7 f2. a4:7.5+ a4:7/d d2:3-.5 d4:3-.7
		g2:7 des4:dim7 c4:7.13 f2 c2:7.5+ f1 a1:7
		d2:7 d4:7.5+ d4:7 g2:9 c2:7 f2. a4:7.5+ a4:7/d
		d2:3-.5 d4:3-.7 g2:7 des4:dim7 c4:7.13 f1 f1 a1:7 d1:3-.5
		g2.:3-.5 bes4:3-.5 f2 e2:7 g2:3-.5 g4:9 c4:7 f2 fis2:dim
		g2:3-.7 c2:7.5+ f1 a1:7 d1:3-.5 g2.:3-.5 bes4:3-.5 f2 e2:7
		g2:3-.5 g4:9 c4:7.13 f2:6 ees2:9 f2 a2:7 d2:3-.5 g2:3-.5.6
		d2:3-.5 bes2:7 d2:3-.5 g2:3-.5.6 d2:3-.5.7 g2:7
		d2:3-.5 g2:3-.5.6 d2:3-.5.7 e2:7 a2:3-.5 fis4:dim f4:3-.5.6
		a2:3-.5 c2:7 f1 a1:7 d1:3-.5 g2.:3-.5 bes4:3-.5 f2 e2:7
		g2:3-.5 g4:9 c4:7.13
}
		\alternative {
			{ f2 d2:3-.5 g2:3-.7 c4:7.13 c4:7.5+ }
			{ f2 bes4:13 c4:7.5+ f1:6 }
		}
	}
}

\score {
<<
\new ChordNames {
	\mychords
}

%{ TODO: work this out for more complex chords
\new FretBoards { 
	\mychords
}
%}

\new Staff { \clef "treble" \key f \major \new Voice = "lyrics" {
	\skip1 \skip1 \skip1 \skip1 \break
	\relative c'' {
		a8 a a2 c,4 |
		a'8 a a2 cis,4 |
		a'4 a bes fis | \break
		a2 (g) |
		c8. a16 c2 a4 |
		g4 f2 a4 | \break
		d8 d,4. a'4 a |
		f2 (c') |
		a8 a a2 c,4 | \break
		a'8 a a2 cis,4 |
		a' a bes fis |
		a2 (g) | \break
		c8. a16 c2 a4 |
		g4 f2 a4 |
		d8 d,4. a'4 a |
		f1 | \break
		\repeat volta 2 {
			a8 c~c2. |
			a8 g8~g2. |
			r4 a d a | \break
			g2. f8 g |
			a4 c e d |
			bes8 d~d4 a g |
			c1 |
			d8 d d d gis,2 |
			a8 c~c2. |
			a8 g8~g2. | \break
			r4 a d a |
			g2. f8 g |
			a4 c e d | \break
			bes d, a' a |
			f1~ |
			f2 r |
			d8 f4 g8~g4 a | \break
			f8 d4 f8~f2 |
			d8 f4 g8~g4 a |
			c8 a4 b8~b2 |
			d,8 f4 g8~g4 a |
			c8 d4 e8~e4. d8 |
			c4 a c c | \break
			a2(g2) |
			a8 c8~c2. |
			a8 g8~g2. |
			r4 a d a | \break
			g2. f8 g |
			a4 c e d |
			bes d, a' a | \break
		}
		\alternative {
			{
				f1~ |
				f4 r r2
			}
			{
				f1~ |
				f2. r4
				\bar "|."
			}
		}
	}
}}

\new Lyrics \lyricsto "lyrics" {
	Mel -- o -- dies bring mem -- o -- ries that
	lin -- ger in my heart. __
	Make me think of Geor -- gia, why
	did we ev -- er part? __
	Some sweet day when blos -- soms fall and
	all the world's a song, __
	I'll go back to Geor -- gia 'cause that's where I be -- long.
\repeat volta 2 {
	Geor -- gia, __ Geor -- gia, __ the whole day
	through. Just an old sweet song keeps Geor -- gia __ on my mind.
	(Geor -- gia on my mind.) Geor -- gia, __ Geor -- gia, __
	a song of you comes as sweet and clear as
	moon -- light through the pines. __ Oth -- er arms __ reach
	out to me, __ oth -- er eyes __ smile ten -- der -- ly, __
	still in peace -- ful dreams I see __ the road leads back to
	you. __ Geor -- gia, __ Geor -- gia, __ no peace I
	find, just an old sweet song keeps Geor -- gia on my
}
\alternative {
	{ mind. __ }
	{ mind. __ }
}
}

\new PianoStaff <<
	\new Staff { \clef "treble" \key f \major
		\relative c'' {
			<a, f' a>8\mf[<c a' c>]~<c a' c>2. |
			<a cis a'>8[<a cis g'>8]~<a cis g'>2. |
			<<
				{ r4 aes' ees' des } \stemUp \\ { des,1 } \stemDown
			>> |
			< aes' f c >8 < b, f' g >4.~
			<<
				{ \voiceOne \stemUp g'2 } \new Voice
				{ \voiceTwo \stemDown < b, des >8 < bes c >4. }
			>>
			< c f a >8 < c f a >8 < c f a >2 < a c >4 |
			< cis e a >8 < cis e a >8 < cis e a >2 < a cis >4 |
			< c a' >4 < c a' >4 < d bes' >4 < c fis >4 |
			<<
				{ \voiceOne \stemUp < b a' >2 < bes g'>2 } \new Voice
				{ \voiceTwo \stemDown 
					r8 \autoBeamOff d \autoBeamOn e f 
					r \autoBeamOff e \autoBeamOn d c 
				}
			>> |
			<<
				{ \voiceOne \stemUp c'8. a16 c2 a4 } \new Voice
				{ \voiceTwo \stemDown < c, f >2. < cis f >4 }
			>> |
			<<
				{ \voiceOne \stemUp g'4 f2 a4 } \new Voice
				{ \voiceTwo \stemDown e4 d cis < c f > }
			>> |
			< f b d >8 < b, d >4. < bes e a >4 < bes e a >4 |
			< a c f >2 < e' gis c >2 |
			< c f a >8 < c f a >8 < c f a >2 < a c >4 |
			< cis e a >8 < cis e a >8 < cis e a >2 < a cis >4 |
			< c a' >4 < c a' >4 < d bes' >4 < c fis >4 |
			<<
				{ \voiceOne \stemUp < b a' >2 < bes g' >2 } \new Voice
				{ \voiceTwo \stemDown
					r8 \autoBeamOff d \autoBeamOn e f
					r \autoBeamOff e \autoBeamOn d c
				}
			>> |
			<<
				{ \voiceOne \stemUp c'8. a16 c2 a4 } \new Voice
				{ \voiceTwo \stemDown
					< c, f >2. < cis f >4
				}
			>> |
			<<
				{ \voiceOne \stemUp g'4 f2 a4 } \new Voice
				{ \voiceTwo \stemDown e4 d cis < c f >4 }
			>> |
			< f b d >8 < b, d >4. < bes e a >4 < bes e a >4 |
			<<
				%{ TODO: make this look better %}
				{ \voiceOne \stemUp < a f' >1 } \new Voice
				{ \voiceTwo \stemDown c8 d c d c2 }
			>> |
\repeat volta 2 {
			< a f' a >8 < c a' c >8~< c a' c >2. |
			< a cis a'>8 < a cis g' >8~< a cis g'>2. |
			r4 < d f a >4 < f a d >4 < d f a >4 |
			< bes d g >2. < bes f' >8 g'8 |
			<<
				{ \voiceOne \stemUp a4 c e d } \new Voice
				{ \voiceTwo \stemDown < c, f >2 < e b' >2 }
			>> |
			<<
				{ \voiceOne \stemUp 
					bes'8 d~d4 < b, f' a >4 < bes e g >4 
				} \new Voice
				{ \voiceTwo \stemDown < d g >2 s2 }
			>> |
			<<
				{ \voiceOne \stemUp c'1 } \new Voice
				{ \voiceTwo \stemDown
					< f, a >8. c16~< c d f a >4 r8. c16~< c dis fis a >4
				}
			>> |
			<<
				{ \voiceOne 
					< bes' d >8 < bes d >8 
					< bes d >8 < bes d >8 < e, gis >2
				} \new Voice
				{ \voiceTwo f2 s2 }
			>> |
			< a, f' a >8 < c a' c >8~< c a' c >2. |
			< a cis a' >8 < a cis g' >8~< a cis g' >2. |
			r4 < d f a >4 < f a d >4 < d f a>4 |
			< bes d g >2. < bes f' >8 g'8 |
			<<
				{ \voiceOne \stemUp a4 c e d } \new Voice
				{ \voiceTwo \stemDown < c, f >2 < e b' >2 }
			>> |
			< d g bes >4 < g, bes d >4 < b f' a >4 < bes e a >4 |
			<<
				{ \voiceOne f'1~ } \new Voice
				{ \voiceTwo < a, d >2 < g des' >2 }
			>> |
			<<
				{ \voiceOne < a f' >2 < cis e >2 } \new Voice
				{ \voiceTwo d4 c r8. bes16 a4 }
			>> |
			< a d >8 < a d f >4 < bes d g >8~< bes d g >4 < bes d a' >4 |
			< a d f >8 < f a d >4 < aes d f >8~< aes d f >2 |
			< a d >8 < a d f >4 < bes d g >8~< bes d g >4 < bes d a' >4 |
			< d f c' >8 < c f a >4 < b f' b >8~< b f' b >2 |
			< a d >8 < a d f >4 < bes d g >8 < bes d g >4 < bes d a' >4 |
			<<
				{ \voiceOne c'8 d4 e8~e4. d8 } \new Voice
				{ \voiceTwo 
					< c, f a >8 < d f a >4 < e gis >8~< e gis >2
				}
			>>
			< e a c >4 < c e a >4 < ees a c >4 < d aes' c >4 |
			< c e a >2 < bes e g >2 |
			< a f' a >8 < c a' c >8~< c a' c >2. |
			< a cis a' >8 < a cis g' >8~< a cis g' >2. |
			r4 < d f a >4 < f a d >4 < d f a >4 |
			< bes d g >2. < bes f' >8 g'8 |
			<<
				{ \voiceOne a4 c e d } \new Voice
				{ \voiceTwo < c, f >2 < e b' >2 }
			>> |
			< d f bes >4 < g, bes d >4 < b f' a >4 < bes e a >4 |
}
\alternative {
	{
		<<
			{ \voiceOne f'4~f8. a16 e'4~e8. d16 |
						c4~c8. bes16 a4 gis4
			} \new Voice
			{ \voiceTwo < a, c >2 < f' a >2 | < d f >2 < bes e >2
			}
		>>
	}
	{
		<<
			{ \voiceOne \stemUp f'2 c'8 c c c | r4 a'2. } \new Voice
			{ \voiceTwo \stemDown 
				< a,, c >2 < d g >4 < e gis >4 | < f a d >1 
			}
		>>
	}
}
		}
	}
	\new Staff { \clef "bass" \key f \major 
		\relative c' {
			<< 
				{ f,,1 } \stemDown \\ { c'4 e d c } \stemUp
			>> |
			<<
				{ a1 } \stemDown \\ { e'4 g f e } \stemUp
			>> |
			< aes, f'>1 |
			< g d' >2 < aes f' >8 < g e' >4. |
			< f c' >4 < f c' >4 < f c' >4 < f c' >4 |
			< a g' >4 < a g' >4 < a g' >4 < a g' >4 |
			< d fis >2 < d, fis' >2 |
			<<
				{ \voiceOne
					r8 \autoBeamOff f' \autoBeamOn e d
					r \autoBeamOff g \autoBeamOn f e
				} \new Voice
				{ \voiceTwo g,2 c }
			>> |
			<<
				{ \voiceOne a'2. g4 } \new Voice
				{ \voiceTwo f2 f,4 a }
			>> |
			<<
				{ \voiceOne a'1 } \new Voice
				{ \voiceTwo d,2 d, }
			>>
			< g d' >2 des'4 c |
			< f, c' >4 f, bes'' c, |
			< f, c' >4 < f c' >4 < f c' >4 < f c' >4 |
			< a g' >4 < a g' >4 < a g' >4 < a g' >4 |
			< d fis >2 < d, fis' >2 |
			<<
				{ \voiceOne
					r8 \autoBeamOff f' \autoBeamOn e d
					r \autoBeamOff g \autoBeamOn f e
				} \new Voice
				{ \voiceTwo g,2 c }
			>> |
			<<
				{ \voiceOne a'2. g4 } \new Voice
				{ \voiceTwo f2 f,4 a }
			>> |
			<<
				{ \voiceOne a'1 } \new Voice
				{ \voiceTwo d,2 d, }
			>> |
			< g d' >2 des'4 c |
			<<
				{ \voiceOne c1 } \new Voice
				{ \voiceTwo f,2. c4 }
			>> |
\repeat volta 2 {
			< f c' >4 < f e' >4 < f d' >4 < f c' >4 |
			< a e' >4 < a g' >4 < a f' >4 < a e' >4 |
			< d, a' f' >1\arpeggio |
			<<
				{ \voiceOne f'4 e d des } \new Voice
				{ \voiceTwo g,1 }
			>> |
			< f c' a' >2\arpeggio < e b' gis' >2\arpeggio |
			<<
				{ \voiceOne g'4 f d8. des16 c4 } \new Voice
				{ \voiceTwo g2 g4 c }
			>> |
			f,8. c'16 a'4 fis,8. dis'16 a'4 |
			< g, g' >2 bes'4 c, |
			< f, c' >4 < f e' >4 < f d' >4 < f c' >4 |
			< a e' >4 < a g' >4 < a f' >4 < a e' >4 |
			< d, a' f' >1\arpeggio |
			<<
				{ \voiceOne f'4 e d des } \new Voice
				{ \voiceTwo g,1 }
			>> |
			< f c' a' >2\arpeggio < e b' gis' >2\arpeggio |
			<<
				{ \voiceOne g'4 f d8. des16 c } \new Voice
				{ \voiceTwo g2 g4 c }
			>> |
			f,8. c'16 f4 ees,8. bes'16 ees4 |
			f,8. c'16 f4 < a, g' >2 |
			< d, a' f' >4 < d a' f' >4 < g e' >4 < g e' >4 |
			< d d' >4 < c c' >4 < bes bes' >4 bes4 |
			< d a' f' >4 < d a' f'>4 < g e' >4 < g e' >4 |
			<<
				{ \voiceOne < d a' >4 < d a' >4 r8. e'16 ees8. d16 
				} \new Voice
				{ \voiceTwo s2 g,2 }
			>> |
			< d a' f' >4 < d a' f' >4 < g e' >4 < g e' >4 |
			< d d' >4 < c c' >4 < b b' >4 e4 |
			< a a' >4 < g g' >4 < fis fis' >4 < f f' >4 |
			e'4 a, c c, |
			< f c' >4 < f e' >4 < f d' >4 < f c' >4 |
			< a e' >4 < a g' >4 < a f' >4 < a e' >4 |
			< d, a' f' >1\arpeggio |
			<<
				{ \voiceOne f'4 e d des } \new Voice
				{ \voiceTwo g1 }
			>> |
			< f, c' a' >2\arpeggio < e b' gis' >2\arpeggio |
			<<
				{ \voiceOne g'4 f d8. des16 c4 } \new Voice
				{ \voiceTwo g2 g4 c }
			>>
}
\alternative {
	{
		f,8. c'16 a'4 d,,8. a'16 f'4 | g,8. d'16 bes'4 c,,8. d'16 c4
	}
	{
		< f, f' >2 < bes aes' >4 < c bes' >4 |
		<<
			{ \voiceOne c'1 } \new Voice
			{ \voiceTwo f,2 f,2 }
		>>
	}
}
		}
	}
>>

>>

\layout {
	\context {
		\Staff \RemoveEmptyStaves
		\override VerticalAxisGroup.remove-first = ##t
	}
}

}

\version "2.18.2"