accessing
isDragged: aBoolean

	isDragged := aBoolean.
	self widget ifNotNil: [self widget onDraggedChanged]