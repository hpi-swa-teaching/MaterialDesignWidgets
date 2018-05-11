border
borderTopLeftRadius: aValue

	| borderRadius |
	borderRadius := super borderTopLeftRadius: aValue.
	self negatedShapeCache: self negatedShape.
	
	^ borderRadius