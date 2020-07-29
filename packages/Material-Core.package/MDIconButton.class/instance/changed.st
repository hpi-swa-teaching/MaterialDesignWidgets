updating
changed

	self state isEnabled
		ifTrue: [self addDropShadow]
		ifFalse: [self removeDropShadow].

	self transparency: (self state isHovered
		ifTrue: [self class hoveredTransparency]
		ifFalse: [self class notHoveredTransparency]).

	super changed