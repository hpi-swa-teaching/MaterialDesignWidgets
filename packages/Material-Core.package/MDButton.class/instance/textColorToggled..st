accessing
textColorToggled: aValue

	| value |
	
	value := self setProperty: #textColorToggled to: (self colorFrom: aValue).
	
	^ value