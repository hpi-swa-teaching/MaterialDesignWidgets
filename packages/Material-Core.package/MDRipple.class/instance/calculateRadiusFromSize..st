drawing
calculateRadiusFromSize: aPoint

	| radius |
	self clickableMorph width > self clickableMorph height
		ifTrue: [
			radius := aPoint y / 2 - 5 ]
		ifFalse: [
			radius := aPoint x / 2 - 5 ].

	^ Rectangle left: radius right: radius top: radius bottom: radius