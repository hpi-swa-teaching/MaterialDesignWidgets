border
borderTopRightRadius: aValue

	self assert: aValue isNumber.
	
	^ self properties at: #borderRadius put: (self borderRadius right: aValue)