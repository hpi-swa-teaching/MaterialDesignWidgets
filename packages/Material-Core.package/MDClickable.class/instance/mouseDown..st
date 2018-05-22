event handling
mouseDown: anEvent
	
	self isMouseDown: true.
	self wantsRipples ifTrue: [
		self startRippleAt: anEvent position - self position ]