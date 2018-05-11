border
borderTopRightRadius: aValue

	| borderRadius |
	borderRadius := super borderTopRightRadius: aValue.
	self negatedShapeCache: self negatedShape.
	
	^ borderRadius