tests
testFlatButtonMouseEvents

	| button |
	button := MDTextButton new.
	
	self assert: (self class flatButtonMockObject_mouseEnter = self class flatButtonMockObject_default) not.
	
	button mouseEnter: (MouseEvent new setType: #mouseEnter).
	self assert: (self render: button) = self class flatButtonMockObject_mouseEnter.
	
	button mouseLeave: (MouseEvent new setType: #mouseLeave).
	self assert: (self render: button) = self class flatButtonMockObject_default
	