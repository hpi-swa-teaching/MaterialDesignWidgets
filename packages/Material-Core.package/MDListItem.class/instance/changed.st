updating
changed

	self currentTextColor: (self state isSelected
		ifTrue: [self textColorSelected]
		ifFalse: [self textColor]).

	super changed.
	self updateFormCache