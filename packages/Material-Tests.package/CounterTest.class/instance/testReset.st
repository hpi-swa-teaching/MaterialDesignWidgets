as yet unclassified
testReset
	self assert: 1 equals: counter currentValue.
	2 to: 10 do: [:ea |
		counter increment.
		self assert: ea equals: counter currentValue ].
	counter reset.
	self assert: 1 equals: counter currentValue
	