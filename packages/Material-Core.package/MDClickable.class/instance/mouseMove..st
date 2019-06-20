event handling
mouseMove: anEvent
	
	(self containsPoint: anEvent cursorPoint) ifFalse: [self deleteRipples]