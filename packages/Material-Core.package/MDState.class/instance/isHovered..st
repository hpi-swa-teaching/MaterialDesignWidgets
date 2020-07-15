accessing
isHovered: aBoolean

	isHovered := aBoolean.
	self widget ifNotNil: [self widget onFocusedChanged]