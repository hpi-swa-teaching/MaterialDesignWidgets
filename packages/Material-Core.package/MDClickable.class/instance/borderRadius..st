border
borderRadius: aValue

	| borderRadius |
	borderRadius := super borderRadius: aValue.
	self updateCache.
	
	^ borderRadius
	
