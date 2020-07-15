accessing
isError: aBoolean

	isError := aBoolean.
	self widget ifNotNil: [self widget onErrorChanged]