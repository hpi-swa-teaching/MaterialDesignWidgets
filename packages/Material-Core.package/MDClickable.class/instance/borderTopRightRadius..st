border
borderTopRightRadius: aValue

	| borderRadius |
	borderRadius := super borderTopRightRadius: aValue.
	self updateNegatedFormCache.
	
	^ borderRadius