accessing
isFocused: aBoolean

	isFocused := aBoolean.
	self widget ifNotNil: [self widget onFocusedChanged]