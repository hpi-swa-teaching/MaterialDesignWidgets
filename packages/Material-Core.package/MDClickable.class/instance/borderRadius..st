accessing
borderRadius: aValue

	| borderRadius |
	borderRadius := super borderRadius: aValue.
	self updateNegatedFormCache.
	
	^ borderRadius
	
