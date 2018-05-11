border
borderRadius: aValue

	| borderRadius |
	borderRadius := super borderRadius: aValue.
	self negatedShapeCache: self negatedShape.
	
	^ borderRadius
	
