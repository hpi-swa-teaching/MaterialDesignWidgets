event handling
mouseLeave: anEvent
	
	self isHovered ifTrue: [self transparency: 0].
	super mouseLeave: anEvent