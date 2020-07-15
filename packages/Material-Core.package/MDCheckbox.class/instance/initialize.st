initialization
initialize

	super initialize.
	self addClickedActionBlock: [self state toggleSelected].
	self extent: self class defaultSize