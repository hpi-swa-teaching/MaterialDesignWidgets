accessing
isDragged: aBoolean

	self isDragged = aBoolean ifTrue: [^ self].

	isDragged := aBoolean.
	self widget ifNotNil: [self widget onDraggedChanged]