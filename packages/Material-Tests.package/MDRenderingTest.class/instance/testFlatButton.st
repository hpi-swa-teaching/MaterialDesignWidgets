as yet unclassified
testFlatButton

	| flatButton |
	flatButton := MDFlatButton new.
	flatButton textColor: '#FFFFFF'.
	
	flatButton text: 'FLAT'.
	self assert: (self render: flatButton) = self flatButtonMockObject_default.
	

	flatButton text: 'Button Text'.
	self assert: (self render: flatButton) = self flatButtonMockObject_textButtonText