event handling
mouseDown: anEvent

	| index mouseEvent mouseEventPosition |
	self filteredListItems ifNotEmpty: [		
		index := self globalPositionToIndex: anEvent position.
		mouseEventPosition :=  self globalPositionToPositionInListItem: anEvent position.
		mouseEvent := anEvent position: mouseEventPosition.

		self ifInBounds: index do: [:listItem | 
			listItem mouseDown: mouseEvent.
			self newSelectedItem: listItem]]