event handling
mouseMove: anEvent

	| item mouseEvent evtCopy |
	item := self globalPositionToIndex: anEvent position.
	evtCopy := anEvent copy.
	mouseEvent := evtCopy position: 0 @ 0.
	
	self filteredListItems ifNotEmpty: [
		self forVisibleItemIndicesDo: [:each |
			each = item 
				ifTrue: [self ifInBounds: each do: [:listItem | listItem mouseEnter: mouseEvent]]
				ifFalse: [self ifInBounds: each do: [:listItem | listItem mouseLeave: mouseEvent]]]]