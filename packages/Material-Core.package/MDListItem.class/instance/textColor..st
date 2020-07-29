accessing
textColor: aValue

	| value |
	value := super textColor: aValue.
	self changed.
	^ value