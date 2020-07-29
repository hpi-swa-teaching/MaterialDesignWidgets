initialization
initializeBackground

	| morph |
	morph := Morph new
		beSticky;
		color: self class defaultOverlayColor;
		bounds: World fullBounds;
		yourself.

	self dismissOnBackgroundClick ifTrue: [
		morph on: #mouseDown send: #close to: self].

	self background: morph