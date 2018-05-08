drawing
drawOn: aCanvas 
	| size center position corner radius |
	center := self clickableMorph position + self center.
	
	size := (self scaleFactor / 0.2 * self calculateMaxSize) @ (self scaleFactor / 0.2 * self calculateMaxSize).
	
	position := center - (0.5 * size).
	position x < self clickableMorph position x
		ifTrue: [position := self clickableMorph position x @ position y].
	position y < self clickableMorph position y
		ifTrue: [position := position x @ self clickableMorph position y].
		
	corner := position + size.
	corner x >= self clickableMorph bounds corner x
		ifTrue: [corner := self clickableMorph bounds corner x @ corner y].
	corner y >= self clickableMorph bounds corner y
		ifTrue: [corner := corner x @ self clickableMorph bounds corner y].
		
	radius := self calculateRadiusFromRippleSize: (position corner: corner).
	
	MDRenderer
		drawRectangleOn: aCanvas
		withBounds: (position corner: corner)
		color: (Color white alpha: self colorAlpha)
		radius: radius