accessing
isSelected: aBoolean

	isSelected := aBoolean.
	self widget ifNotNil: [self widget onSelectedChanged]