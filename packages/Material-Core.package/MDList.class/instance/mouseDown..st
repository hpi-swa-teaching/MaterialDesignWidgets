event handling
mouseDown: anEvent

	self filteredListItems ifNotEmpty: [
		| index mouseEvent mouseEvtPos |			
		index := self globalPositionToIndex: anEvent position.
		
		mouseEvtPos :=  self globalPositionToPositionInListItem: anEvent position.
		mouseEvent := anEvent position: mouseEvtPos.

		self ifInBounds: index do: [:listItem |
			self lastClickedItem: listItem.
			listItem mouseDown: mouseEvent.
			self newSelectedItem: listItem]]