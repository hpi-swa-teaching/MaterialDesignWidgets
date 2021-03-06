control
popUpAt: aPoint forHand: hand in: aWorld

	| x  y |
	x := self getXPosition: aPoint.
	y := self getYPosition: aPoint.

	self
		deleteAllRipples; 
		position: x @ y;
		openInWorld.

	aWorld addMorphFront: self.
	self originalFocusHolder: hand keyboardFocus.
	hand 
		newMouseFocus: self;
		newKeyboardFocus: self.
	self selectItem: nil event: hand lastEvent.
	self changed