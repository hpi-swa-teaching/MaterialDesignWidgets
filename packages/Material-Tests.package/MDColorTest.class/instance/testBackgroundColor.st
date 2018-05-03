as yet unclassified
testBackgroundColor

	| widget |
	widget := MDWidget new.
	
	widget backgroundColor: '#123456'.
	self assert: (widget backgroundColor) = (Color fromHTMLString: '123456').
	
	widget backgroundColor: (Color fromHTMLString: 'FEFEFE').
	self assert: (widget backgroundColor) = (Color fromHTMLString: 'FEFEFE')
	