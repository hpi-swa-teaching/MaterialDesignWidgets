event handling
mouseEnter: anEvent
	
	self isEnabled ifTrue: [self transparency: 0.6].
	super mouseEnter: anEvent
	