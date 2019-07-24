event handling
mouseUp: anEvent

	self isMouseDown: false.
	self updateStateWithAction: #mouseUp.
	self isEnabled ifTrue: [
		(self bounds containsPoint: anEvent position) 
			ifTrue: [
				self 
					doClickableAction;
					executeClickedActionBlocks.
				self wantsRipples ifTrue: [self deleteRipples]]
			ifFalse: [self mouseLeave: anEvent].
		self changed]