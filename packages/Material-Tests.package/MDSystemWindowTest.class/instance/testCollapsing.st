testing
testCollapsing

	unitUnderTest collapse.
	self assert: (unitUnderTest isCollapsed)