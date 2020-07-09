accessing
isActivated: aBoolean

	isActivated := aBoolean.
	self widget ifNotNil: [self widget onActivatedChanged]