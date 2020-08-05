event handling
mouseDown: anEvent

	self state isPressed: true.
	self wantsRipples ifTrue: [
		self startRippleAt: anEvent position - self position]