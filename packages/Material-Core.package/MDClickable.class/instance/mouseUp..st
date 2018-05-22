event handling
mouseUp: anEvent

	(self bounds containsPoint: anEvent position) ifTrue: [ self doClickableAction ].
	self isMouseDown: false.
	self wantsRipples ifTrue: [
		self ripples last isAnimationRunning ifFalse: [ self deleteRipple: self ripples last ]].
	self changed