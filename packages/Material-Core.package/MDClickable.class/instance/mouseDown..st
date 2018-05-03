event handling
mouseDown: anEvent

	self isMouseDown: true.
	self rippleCenter: anEvent position.
	
	self showRipple: true.
	self isRippleAnimationRunning: true.
	
	self startRippleAnimation