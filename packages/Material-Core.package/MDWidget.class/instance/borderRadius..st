accessing
borderRadius: aValue

	| borderRadius |
	aValue isNumber 
		ifTrue: [borderRadius := MDBorderRadius all: aValue]
		ifFalse: [borderRadius := aValue].
		
	^ self setProperty: #borderRadius to: borderRadius