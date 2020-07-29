accessing
isPressed: aBoolean

	self isPressed = aBoolean ifTrue: [^ self].

	isPressed := aBoolean.
	self widget ifNotNil: [self widget onPressedChanged]