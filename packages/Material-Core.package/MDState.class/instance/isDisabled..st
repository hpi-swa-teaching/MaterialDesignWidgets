accessing
isDisabled: aBoolean

	self isDisabled = aBoolean ifTrue: [^ self].

	isDisabled := aBoolean.
	self widget ifNotNil: [self widget onDisabledChanged]