updating
onSelectedChanged

	self state isSelected
		ifTrue: [self addIcon: self checkedIcon]
		ifFalse: [self removeIcon].

	super onSelectedChanged