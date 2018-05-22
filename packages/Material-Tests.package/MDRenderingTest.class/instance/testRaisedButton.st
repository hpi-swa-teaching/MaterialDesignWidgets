tests
testRaisedButton

	| raisedButton |
	raisedButton := MDContainedButton new.
	
	self assert: (self render: raisedButton) = self class raisedButtonMockObject_default.

	raisedButton text: 'Button'.
	self assert: (self render: raisedButton) = self class raisedButtonMockObject_alternativeText.
	
	raisedButton 
		text: 'CONTAINED';
		backgroundColor: '#2196f3'.
	self assert: (self render: raisedButton) = self class raisedButtonMockObject_alternativeBackgroundColor.