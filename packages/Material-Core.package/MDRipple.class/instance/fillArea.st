drawing
fillArea
	
	| calculatedSize position corner |
	
	calculatedSize := self calculateSize.
	position := self center - (0.5 * calculatedSize).
	corner := position + calculatedSize.
	
	^ position corner: corner