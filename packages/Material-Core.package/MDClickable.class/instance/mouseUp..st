event handling
mouseUp: anEvent

	self updateStateWithAction: #mouseUp.
	self isHovered ifTrue: [
		self doClickableAction.
		self executeClickedActionBlocks.
		self changed].
	self wantsRipples ifTrue: [self deleteRipples].