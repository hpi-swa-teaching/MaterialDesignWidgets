event handling
mouseMove: anEvent

	| item mouseEvent eventCopy |
	item := self globalPositionToIndex: anEvent position.
	eventCopy := anEvent copy.
	mouseEvent := eventCopy position: 0 @ 0.
	
	self filteredListItems ifNotEmpty: [
		self forVisibleItemIndicesDo: [:each |
			each = item 
				ifTrue: [self ifInBounds: each do: [:listItem | listItem mouseEnter: mouseEvent]]
				ifFalse: [self ifInBounds: each do: [:listItem | listItem mouseLeave: mouseEvent]]]]