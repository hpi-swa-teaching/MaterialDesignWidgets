border
borderBottomRightRadius: aValue

	self assert: aValue isNumber.
	
	^ self properties at: #borderRadius put: (self borderRadius bottom: aValue)