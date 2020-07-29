accessing
isActivated: aBoolean

	self isActivated = aBoolean ifTrue: [^ self].

	isActivated := aBoolean.
	self widget ifNotNil: [self widget onActivatedChanged]