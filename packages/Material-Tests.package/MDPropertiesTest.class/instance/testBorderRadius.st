as yet unclassified
testBorderRadius

	| widget testValues |
	widget := MDWidget new.
	testValues := #(10 20 100 0.5 4).
	
	testValues do: [ :each |
		widget borderRadius: each.
		self assert: (widget borderRadius ) = each ]
	