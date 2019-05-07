event handling
mouseMove: evt
	
	(self containsPoint: evt cursorPoint) ifFalse: [self deleteRipples]