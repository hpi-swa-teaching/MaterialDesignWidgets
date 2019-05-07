animation
finishedAnimation

	self isAnimationRunning: false.
	self isFadeOutQueued ifTrue: [self startFadeOut]