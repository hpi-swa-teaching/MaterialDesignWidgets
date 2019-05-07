tests
_testRippleDeletion

	| animationTime |
	animationTime := MDRipple defaultAnimationDuration + MDRipple defaultFadeOutDuration.

	self widget removeRipples.
	self widget startRippleAt: 0@0.

	"wait for ripple deletion in different process"
	[(Delay forMilliseconds: animationTime + 50) wait.
	self assert: self widget ripples isEmpty] fork