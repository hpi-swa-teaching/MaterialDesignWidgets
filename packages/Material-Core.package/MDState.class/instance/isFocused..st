accessing
isFocused: aBoolean

	self isFocused = aBoolean ifTrue: [^ self].

	isFocused := aBoolean.
	self widget ifNotNil: [self widget onFocusedChanged]