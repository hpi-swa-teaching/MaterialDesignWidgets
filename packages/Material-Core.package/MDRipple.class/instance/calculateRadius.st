drawing
calculateRadius

	| radiusHorizontal |
	radiusHorizontal := self clickableMorph height / 2.

	^ Rectangle left: radiusHorizontal right: radiusHorizontal top: radiusHorizontal bottom: radiusHorizontal