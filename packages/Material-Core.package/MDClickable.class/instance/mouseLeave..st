event handling
mouseLeave: anEvent
	
	self updateStateWithAction: #mouseLeave.
	self wantsRipples ifTrue: [self deleteRipples]