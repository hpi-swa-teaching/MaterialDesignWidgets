event handling
mouseLeave: anEvent
	
	self isHovered ifTrue: [self transparency: self class notHoveredTransparency].
	super mouseLeave: anEvent