updating
changed

	self label color: (self state isEnabled
		ifTrue: [self textColor]
		ifFalse: [self textColorDisabled]).

	super changed