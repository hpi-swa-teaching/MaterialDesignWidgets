private
invokeMenu: anEvent
	
	| invokedMenu |
	
	invokedMenu := self getMenu: anEvent shiftPressed.
	invokedMenu ifNotNil: [invokedMenu popUpEvent: anEvent in: self world]