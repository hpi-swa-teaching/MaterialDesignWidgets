as yet unclassified
testRaisedButton

	| raisedButton |
	raisedButton := MDRaisedButton new.
	
	raisedButton
		text: 'RAISED';
		backgroundColor: '#F44336'.
	self assert: (self render: raisedButton) = self raisedButtonMockObject_default.
	

	raisedButton
		text: 'Button Text';
		backgroundColor: '#2196f3'.
	self assert: (self render: raisedButton) = self raisedButtonMockObject_textButtonText_colorBlue500