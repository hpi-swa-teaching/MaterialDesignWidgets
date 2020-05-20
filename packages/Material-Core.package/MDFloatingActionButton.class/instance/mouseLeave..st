as yet unclassified
mouseLeave: anEvent
	
	self isHovered ifTrue: [self drop].
	super mouseLeave: anEvent