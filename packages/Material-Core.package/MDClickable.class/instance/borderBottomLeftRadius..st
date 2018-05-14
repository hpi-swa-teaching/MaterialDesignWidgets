border
borderBottomLeftRadius: aValue

	| borderRadius |
	borderRadius := super borderBottomLeftRadius: aValue.
	self updateCache.
	
	^ borderRadius