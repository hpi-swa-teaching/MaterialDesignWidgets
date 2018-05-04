border
borderTopLeftRadius: aValue

	self assert: aValue isNumber.
	
	^ self properties at: #borderRadius put: (self borderRadius top: aValue)