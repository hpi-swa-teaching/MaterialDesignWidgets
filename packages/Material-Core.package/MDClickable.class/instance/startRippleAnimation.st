drawing
startRippleAnimation
	
	AnimPropertyAnimation new
		duration: self rippleDuration;
		target: self;
		property: #updateRippleSize;
		startValue: 0;
		endValue: 1;
		start: #deleteWhenFinished; "Automatic registry clean-up. No need to unregister."
		finishBlock: [self rippleAnimationFinished];
		register. "Add to animation registry."