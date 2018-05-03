accessing
rippleAnimationFinished

	self isRippleAnimationRunning: false.
	self isMouseDown ifFalse: [ self showRipple: false ].
	self changed