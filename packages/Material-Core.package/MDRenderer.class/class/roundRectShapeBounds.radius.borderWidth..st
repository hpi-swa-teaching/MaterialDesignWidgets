drawing
roundRectShapeBounds: aRectangle radius: anMDBorderRadius borderWidth: width

	| circle points radius |

	radius := self keepBorderRadius: anMDBorderRadius inRectangle: aRectangle.

	circle := radius scaleBy: 0.42."0.552228474."
	points := OrderedCollection new.

	width top > 0 ifTrue: [
		" top left corner "
		radius topLeft > 0 ifTrue: [
			points
				add: 0 @ radius topLeft;
				add: 0 @ circle topLeft;
				add: circle topLeft @ 0;
				add: radius topLeft @ 0].

		" top line "
		points
			add: radius topLeft @ 0;
			add: radius topLeft @ 0;
			add: radius topLeft @ 0;
			add: aRectangle width - radius topRight @ 0].

	width right > 0 ifTrue: [
		" top right corner "
		radius topRight > 0 ifTrue: [
			points
				add: aRectangle width - radius topRight @ 0;
				add: aRectangle width - circle topRight @ 0;
				add: aRectangle width @ circle topRight;
				add: aRectangle width @ radius topRight].

		" right line "
		points
			add: aRectangle width @ radius topRight;
			add: aRectangle width @ radius topRight;
			add: aRectangle width @ radius topRight;
			add: aRectangle width @ (aRectangle height - radius bottomRight)].

	width bottom > 0 ifTrue: [
		" bottom right corner "
		radius bottomRight > 0 ifTrue: [
			points
				add: aRectangle width @ (aRectangle height - radius bottomRight);
				add: aRectangle width @ (aRectangle height - circle bottomRight);
				add: aRectangle width - circle bottomRight @ aRectangle height;
				add: aRectangle width - radius bottomRight @ aRectangle height].

		" bottom line "
		points
			add: aRectangle width - radius bottomRight @ aRectangle height;
			add: aRectangle width - radius bottomRight @ aRectangle height;
			add: aRectangle width - radius bottomRight @ aRectangle height;
			add: radius bottomLeft @ aRectangle height].

	width left > 0 ifTrue: [
		" bottom left corner "
		radius bottomLeft > 0 ifTrue: [
			points
				add: radius bottomLeft @ aRectangle height;
				add: circle bottomLeft @ aRectangle height;
				add: 0 @ (aRectangle height - circle bottomLeft);
				add: 0 @ (aRectangle height - radius bottomLeft)].

		" left line "
		points
			add: 0 @ (aRectangle height - radius bottomLeft);
			add: 0 @ (aRectangle height - radius bottomLeft);
			add: 0 @ (aRectangle height - radius bottomLeft);
			add: 0 @ radius topLeft].

	^ points asPointArray
