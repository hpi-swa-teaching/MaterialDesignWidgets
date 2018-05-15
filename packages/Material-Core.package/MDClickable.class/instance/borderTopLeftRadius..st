border
borderTopLeftRadius: aValue

	| borderRadius |
	borderRadius := super borderTopLeftRadius: aValue.
	self updateNegatedFormCache.
	
	^ borderRadius