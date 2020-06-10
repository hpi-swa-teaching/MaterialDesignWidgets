drawing
keepBorderRadius: anMDBorderRadius inRectangle: aRectangle

	| radius max |
	radius := anMDBorderRadius copy.
	
	aRectangle height > aRectangle width 
		ifTrue: [ max := aRectangle width / 2 ]
		ifFalse: [ max := aRectangle height / 2 ].
	
	radius topLeft > max ifTrue: [ radius := radius topLeft: max ].
	radius topRight > max ifTrue: [ radius := radius topRight: max ].
	radius bottomLeft > max ifTrue: [ radius := radius bottomLeft: max ].
	radius bottomRight > max ifTrue: [ radius := radius bottomRight: max ].

	^ radius