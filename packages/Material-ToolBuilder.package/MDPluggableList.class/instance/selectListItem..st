event handling
selectListItem: anEvent

	| index mouseEvent mouseEvtPos |		
			
	self filteredListItems ifEmpty: [^ self].
			
	index := self globalPositionToIndex: anEvent position.
	
	mouseEvtPos :=  self globalPositionToPositionInListItem: anEvent position.
	mouseEvent :=  anEvent copy position: mouseEvtPos.
			
	self ifInBounds: index do: [:listItem |
		self modelSelect: listItem modelIndex.
		listItem mouseDown: mouseEvent.
		self newSelectedItem: listItem]