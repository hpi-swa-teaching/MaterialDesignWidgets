accessing
canDeselect: aBool

	canDeselect := aBool.
	(aBool not and: [self selectedItem isNil]) ifTrue: [
		self newSelectedItem: filteredListItems first]