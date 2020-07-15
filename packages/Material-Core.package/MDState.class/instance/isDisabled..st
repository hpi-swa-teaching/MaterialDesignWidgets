accessing
isDisabled: aBoolean

	isDisabled := aBoolean.
	self widget ifNotNil: [self widget onDisabledChanged]