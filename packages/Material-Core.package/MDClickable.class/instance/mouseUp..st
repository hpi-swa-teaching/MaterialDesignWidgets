event handling
mouseUp: anEvent

	self isMouseDown: false.
	self ripples last isAnimationRunning
		ifFalse: [
			self deleteRipple: self ripples last ].
	self changed