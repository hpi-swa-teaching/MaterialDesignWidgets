event handling
mouseUp: anEvent
	
	| index |
	
	self filteredListItems ifNotEmpty: [
		index := self globalPositionToIndex: anEvent position.
		self ifInBounds: index do: [:item |
			item mouseUp: anEvent.
			item mouseEnter: anEvent]]