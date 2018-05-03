event handling
mouseUp: anEvent

	self isMouseDown: false.
	(self ripples last isAnimationRunning not)
		ifTrue: [
			self deleteRipple: self ripples last ].
	self changed