updating
changed

	self state isEnabled
		ifTrue: [self addDropShadow]
		ifFalse: [self removeDropShadow].

	super changed