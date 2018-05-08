drawing
calculateRadiusFromRippleSize: aRectangle

	| radius |
	
	radius := aRectangle height / 2.
	
	self clickableMorph position + self clickableMorph borderTopLeftRadius >= aRectangle origin
		ifTrue: [ radius := self clickableMorph position x + self clickableMorph borderTopLeftRadius - aRectangle origin x ].
	
	"
	self clickableMorph width > self clickableMorph height
		ifTrue: [
			radius := aPoint y / 2 - 5 ]
		ifFalse: [
			radius := aPoint x / 2 - 5 ].
	"

	^ Rectangle left: radius right: radius top: radius bottom: radius