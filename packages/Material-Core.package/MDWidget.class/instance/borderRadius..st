as yet unclassified
borderRadius: aValue

	self assert: aValue isNumber.
	^ self properties at: #borderRadius put: aValue