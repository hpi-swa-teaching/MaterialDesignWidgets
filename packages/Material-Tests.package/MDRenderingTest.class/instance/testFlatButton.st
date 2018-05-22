tests
testFlatButton

	| flatButton |
	flatButton := MDTextButton new.
	
	self assert: (self render: flatButton) = self class flatButtonMockObject_default.

	flatButton text: 'Button'.
	self assert: (self render: flatButton) = self class flatButtonMockObject_alternativeText