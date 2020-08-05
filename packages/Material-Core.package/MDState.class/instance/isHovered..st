accessing
isHovered: aBoolean

	self isHovered = aBoolean ifTrue: [^ self].

	isHovered := aBoolean.
	self widget ifNotNil: [self widget onFocusedChanged]