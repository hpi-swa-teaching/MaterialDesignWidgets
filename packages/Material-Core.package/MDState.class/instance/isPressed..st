accessing
isPressed: aBoolean

	isPressed := aBoolean.
	self widget ifNotNil: [self widget onPressedChanged]