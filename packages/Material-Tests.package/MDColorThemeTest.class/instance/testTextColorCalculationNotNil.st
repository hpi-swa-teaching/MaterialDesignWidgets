as yet unclassified
testTextColorCalculationNotNil

	theme textColorOptions: {Color black . Color white}.
	
	self deny: ((theme textColorOn: (Color white)) isNil).
	self assert: ((theme textColorOn: (Color white)) isColor)