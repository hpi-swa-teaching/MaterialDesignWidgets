updating
onSelectedChanged

	(self state isDeselected and: [self subMenu isNil not] and: [self owner isNil not]) ifTrue: [
		self owner activeSubmenu: nil].
	super onSelectedChanged