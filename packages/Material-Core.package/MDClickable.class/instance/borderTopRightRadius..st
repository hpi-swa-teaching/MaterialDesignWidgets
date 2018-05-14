border
borderTopRightRadius: aValue

	| borderRadius |
	borderRadius := super borderTopRightRadius: aValue.
	self updateCache.
	
	^ borderRadius