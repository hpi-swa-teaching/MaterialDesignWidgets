border
borderBottomLeftRadius: aValue

	| borderRadius |
	borderRadius := super borderBottomLeftRadius: aValue.
	self updateNegatedFormCache.
	
	^ borderRadius