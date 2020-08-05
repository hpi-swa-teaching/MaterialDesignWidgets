accessing
canDeselect: aBool

	canDeselect := aBool.
	(aBool not and: [self selectedItem isNil]) ifTrue: [
		| item |
		item := self filteredListItems first.
		item ifNil: [^ self].
		self newSelectedItem: item executeSelectionChangeBlock: false]