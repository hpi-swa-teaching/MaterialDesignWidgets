border
borderBottomLeftRadius: aValue

	self assert: aValue isNumber.
	
	^ self properties at: #borderRadius put: (self borderRadius left: aValue)