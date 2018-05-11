border
borderBottomRightRadius: aValue

	| borderRadius |
	borderRadius := super borderBottomRightRadius: aValue.
	self negatedShapeCache: self negatedShape.
	
	^ borderRadius