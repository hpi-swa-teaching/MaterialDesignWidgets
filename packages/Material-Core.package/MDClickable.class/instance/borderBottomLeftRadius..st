border
borderBottomLeftRadius: aValue

	| borderRadius |
	borderRadius := super borderBottomLeftRadius: aValue.
	self negatedShapeCache: self negatedShape.
	
	^ borderRadius