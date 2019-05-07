animation
fadeOut

	self isAnimationRunning
		ifTrue: [self queueFadeOut] 
		ifFalse: [self startFadeOut]