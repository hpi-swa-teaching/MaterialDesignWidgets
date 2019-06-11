as yet unclassified
testTextColorCalculation

	theme textColorOptions: {Color black . Color white}.
	
	self deny: ((theme textColorOn: (Color white)) isNil). "extra test"
	self assert: ((theme textColorOn: (Color white)) isColor).
	
	self assert: Color black equals: ((theme textColorOn: (Color white))).
	self assert: Color white equals: ((theme textColorOn: (Color black))).
	
	self assert: Color black equals: ((theme textColorOn: (Color fromString: 'f9fbe7'))).
	self assert: Color white equals: ((theme textColorOn: (Color fromString: '5d4037')))