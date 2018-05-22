tests
testRaisedButton

	| raisedButton |
	raisedButton := MDContainedButton new.
	
	self assert: (self render: raisedButton) = self class containedButtonMockObject_default.

	raisedButton text: 'Button'.
	self assert: (self render: raisedButton) = self class containedButtonMockObject_alternativeText.
	
	raisedButton 
		text: 'CONTAINED';
		backgroundColor: '#2196f3'.
	self assert: (self render: raisedButton) = self class containedButtonMockObject_alternativeBackgroundColor.