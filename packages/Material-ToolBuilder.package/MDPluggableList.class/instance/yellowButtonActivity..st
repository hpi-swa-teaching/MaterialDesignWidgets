event handling
yellowButtonActivity: shiftKeyState

	| invokedMenu |
	
	(invokedMenu := self getMenu: shiftKeyState) ifNotNil:
		[invokedMenu setInvokingView: self.
		invokedMenu popUpEvent: self activeHand lastEvent in: self world]