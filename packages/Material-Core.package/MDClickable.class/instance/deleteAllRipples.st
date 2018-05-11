ripple management
deleteAllRipples

	self ripples do: [ :each | each fadeOutWithFinishBlock: [self ripples remove: each] ]