testing
testBorderRadius

	| testValues borderRadius |
	testValues := #(10 20 100 0.5 4).
	
	testValues do: [:each |
		borderRadius := MDBorderRadius all: each.
		self assert: each = borderRadius topLeft.
		self assert: each = borderRadius topRight.
		self assert: each = borderRadius bottomLeft.
		self assert: each = borderRadius bottomRight].
	
	borderRadius := MDBorderRadius topLeft: 10 topRight: 20 bottomLeft: 30 bottomRight: 0.5.
	
	self assert: borderRadius topLeft = 10.
	self assert: borderRadius topRight = 20.
	self assert: borderRadius bottomLeft = 30.
	self assert: borderRadius bottomRight = 0.5.

	