as yet unclassified
testTextColorCalculationOnVibrantColors

	theme textColorOptions: {Color black . Color white}.

	self assert: Color black equals: ((theme textColorOn: (Color fromString: 'f9fbe7'))).
	self assert: Color white equals: ((theme textColorOn: (Color fromString: '5d4037')))