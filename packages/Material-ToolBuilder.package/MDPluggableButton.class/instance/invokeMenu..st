private
invokeMenu: anEvent
	
	| menu |
	
	menu := self getMenu: anEvent shiftPressed.
	menu ifNotNil: [menu popUpEvent: anEvent in: self world]