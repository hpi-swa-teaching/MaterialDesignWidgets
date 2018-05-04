as yet unclassified
testBorderRadius

	| widget testValues |
	widget := MDWidget new.
	testValues := #(10 20 100 0.5 4).
	
	testValues do: [ :each |
		widget borderRadius: each.
		self assert: (widget borderRadius ) = (Rectangle left: each right: each top: each bottom: each) ].
	
	testValues := #(10 20 30 0.5).
	
	widget borderTopRightRadius: (testValues at: 1).
	widget borderTopLeftRadius: (testValues at: 2).
	widget borderBottomRightRadius: (testValues at: 3).
	widget borderBottomLeftRadius: (testValues at: 4).
	
	self assert: widget borderTopRightRadius = (testValues at: 1).
	self assert: widget borderTopLeftRadius = (testValues at: 2).
	self assert: widget borderBottomRightRadius = (testValues at: 3).
	self assert: widget borderBottomLeftRadius = (testValues at: 4).
	