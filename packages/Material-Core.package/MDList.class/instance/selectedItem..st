accessing
selectedItem: aListItem

	self setProperty: #selectedItem to: aListItem.
	self onSelectionChanged value: aListItem.

	^ aListItem