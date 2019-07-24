event handling
mouseEnter: anEvent

	super mouseEnter: anEvent.
	self owner ifNotNil: [self owner selectItem: self event: anEvent]