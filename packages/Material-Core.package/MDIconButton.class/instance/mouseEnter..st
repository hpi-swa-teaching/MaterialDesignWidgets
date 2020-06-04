event handling
mouseEnter: anEvent
	
	self isEnabled ifTrue: [self transparency: self class hoveredTransparency].
	super mouseEnter: anEvent
