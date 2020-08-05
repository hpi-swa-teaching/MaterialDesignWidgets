accessing
isSelected: aBoolean

	self isSelected = aBoolean ifTrue: [^ self].

	isSelected := aBoolean.
	self widget ifNotNil: [self widget onSelectedChanged]