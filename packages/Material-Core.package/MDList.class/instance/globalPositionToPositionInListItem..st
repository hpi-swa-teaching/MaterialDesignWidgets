drawing
globalPositionToPositionInListItem: aPoint

	| position mouseEventPosition |
	position := aPoint - self position + self scrollOffset.
	mouseEventPosition := (aPoint - self position) x @ (position y \\ self listItemHeightWithPadding).
	
	^ mouseEventPosition