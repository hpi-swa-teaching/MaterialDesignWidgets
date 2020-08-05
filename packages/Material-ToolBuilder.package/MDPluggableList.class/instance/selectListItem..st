event handling
selectListItem: anEvent

	| index mouseEvent mouseEventPosition |		
			
	self filteredListItems ifEmpty: [^ self].
			
	index := self globalPositionToIndex: anEvent position.
	
	mouseEventPosition :=  self globalPositionToPositionInListItem: anEvent position.
	mouseEvent :=  anEvent copy position: mouseEventPosition.
			
	self ifInBounds: index do: [:listItem |
		self modelSelect: listItem modelIndex.
		listItem mouseDown: mouseEvent.
		self newSelectedItem: listItem]