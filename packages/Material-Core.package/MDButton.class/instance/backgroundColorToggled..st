accessing
backgroundColorToggled: aValue

	| value |
	
	value := self setProperty: #backgroundColorToggled to: (self colorFrom: aValue).
	
	^ value