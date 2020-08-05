testing
testTextColorCalculationOnBlackAndWhite

	theme textColorOptions: {Color black . Color white}.
	
	self assert: Color black equals: (theme textColorOn: Color white).
	self assert: Color white equals: (theme textColorOn: Color black)