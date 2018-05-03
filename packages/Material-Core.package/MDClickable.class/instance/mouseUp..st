event handling
mouseUp: anEvent

	self isMouseDown: false.
	self isRippleAnimationRunning ifFalse: [ self showRipple: false ].
	self changed