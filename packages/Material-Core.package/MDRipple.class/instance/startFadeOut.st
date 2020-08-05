animation
startFadeOut

	self isAnimationRunning: true.
	AnimPropertyAnimation new
   		duration: self fadeOutDuration;
   		target: self;
   		property: #updateAlpha;
   		startValue: self colorAlpha;
   		endValue: 0;
   		start: #deleteWhenFinished; "Automatic registry clean-up. No need to unregister."
		finishBlock: [self clickableMorph ripples remove: self];
   		register. "Add to animation registry."