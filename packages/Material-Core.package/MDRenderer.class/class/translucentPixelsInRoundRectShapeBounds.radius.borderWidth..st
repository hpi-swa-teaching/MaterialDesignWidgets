drawing
translucentPixelsInRoundRectShapeBounds: aRectangle radius: anMDBorderRadius borderWidth: width

	| circle points radius |

	radius := self keepBorderRadius: anMDBorderRadius inRectangle: aRectangle.

	circle := radius copy.
	points := OrderedCollection new.

	" top left corner "
	(width top > 0 and: radius topLeft > 0)
		ifTrue: [
			points
				add: 0 @ 0;
				add: 0 @ radius topLeft;
				add: 0 @ 0;
				add: 0 @ radius topLeft;
				add: 0 @ radius topLeft;
				add: 0 @ (circle topLeft * 0.48);
				add: (circle topLeft * 0.42) @ -1;
				add: radius topLeft @ -1;
				add: radius topLeft @ -1;
				add: 0 @ -1;
				add: radius topLeft @ -1;
				add: 0 @ -1].


	" top right corner "
	(width right > 0 and: radius topRight > 0)
		ifTrue: [
			points
				add: aRectangle width @ 0;
				add: aRectangle width - radius topRight @ 0;
				add: aRectangle width @ 0;
				add: aRectangle width - radius topRight @ 0;
				add: aRectangle width - radius topRight @ -1;
				add: aRectangle width - (circle topRight * 0.48) @ -1;
				add: aRectangle width + 1 @ (circle topRight * 0.42);
				add: aRectangle width + 1 @ radius topRight;
				add: aRectangle width @ radius topRight;
				add: aRectangle width @ 0;
				add: aRectangle width @ radius topRight;
				add: aRectangle width @ 0].


	" bottom right corner "
	(width bottom > 0 and: radius bottomRight > 0)
		ifTrue: [
			points
				add: aRectangle width @ aRectangle height;
				add: aRectangle width @ (aRectangle height - radius bottomRight);
				add: aRectangle width @ aRectangle height;
				add: aRectangle width @ (aRectangle height - radius bottomRight);
				add: aRectangle width + 1 @ (aRectangle height - radius bottomRight);
				add: aRectangle width + 1 @ (aRectangle height - (circle bottomRight * 0.48));
				add: aRectangle width + 1 - (circle bottomRight * 0.42) @ aRectangle height;
				add: aRectangle width + 1 - radius bottomRight @ aRectangle height;
				add: aRectangle width - radius bottomRight @ aRectangle height;
				add: aRectangle width @ aRectangle height;
				add: aRectangle width - radius bottomRight @ aRectangle height;
				add: aRectangle width @ aRectangle height].



	" bottom left corner "
	(width left > 0 and: radius bottomLeft > 0)
		ifTrue: [
			points
				add: 0 @ aRectangle height;
				add: radius bottomLeft @ aRectangle height;
				add: 0 @ aRectangle height;
				add: radius bottomLeft @ aRectangle height;
				add: radius bottomLeft @ aRectangle height;
				add: (circle bottomLeft * 0.42) @ aRectangle height;
				add: 0 @ (aRectangle height - (circle bottomLeft * 0.48));
				add: 0 @ (aRectangle height - radius bottomLeft);
				add: 0 @ (aRectangle height - radius bottomLeft);
				add: 0 @ aRectangle height;
				add: 0 @ (aRectangle height - radius bottomLeft);
				add: 0 @ aRectangle height].

	^ points asPointArray
