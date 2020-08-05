event handling
mouseMove: anEvent
	
	super mouseMove: anEvent.
	
	self mouseLeaveDragging: anEvent.
	self mouseEnterDragging: anEvent