accessing
selectedItem: aListItem executeSelectionChangeBlock: aBoolean

	self setProperty: #selectedItem to: aListItem.
	aBoolean ifTrue: [self onSelectionChanged value: aListItem].

	^ aListItem