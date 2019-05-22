event handling
mouseDown: anEvent
	
	self updateStateWithAction: #mouseDown.
	(self wantsRipples) ifTrue: [
		self startRippleAt: anEvent position - self position]