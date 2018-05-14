border
borderBottomRightRadius: aValue

	| borderRadius |
	borderRadius := super borderBottomRightRadius: aValue.
	self updateCache.
	
	^ borderRadius