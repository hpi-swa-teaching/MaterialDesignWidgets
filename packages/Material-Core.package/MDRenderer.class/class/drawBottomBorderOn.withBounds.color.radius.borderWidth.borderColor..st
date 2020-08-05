drawing
drawBottomBorderOn: aCanvas withBounds: aRectangle color: aColor radius: anMDBorderRadius borderWidth: aValue borderColor: aBorderColor
	
	| borderBounds |
	self
		drawRectangleOn: aCanvas 
		withBounds: aRectangle
		color: aColor
		radius: anMDBorderRadius.
	
	borderBounds := (aRectangle origin x)@(aRectangle corner y - aValue) corner: aRectangle corner.
	self
		drawRectangleOn: aCanvas 
		withBounds: borderBounds
		color: aBorderColor
		radius: anMDBorderRadius