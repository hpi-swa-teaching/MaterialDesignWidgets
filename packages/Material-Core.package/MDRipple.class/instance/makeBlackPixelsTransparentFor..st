drawing
makeBlackPixelsTransparentFor: aRipple

	| shapeNegated |
	
	shapeNegated := self clickableMorph negatedShapeCache.
	0 to: (self clickableMorph width) do: [:x |
		0 to: (self clickableMorph height) do: [:y |
			(shapeNegated colorAt: x @ y) = Color black 
				ifTrue: [aRipple colorAt: x @ y put: Color transparent]]]