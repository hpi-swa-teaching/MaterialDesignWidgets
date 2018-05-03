as yet unclassified
testColorConversion
	
	self assert: (MDWidget new hexToColor: '#123456') = (Color fromHTMLString: '123456').
	self assert: (MDWidget new hexToColor: '#F44336') = (Color fromHTMLString: 'F44336').
	
	