initialization
initialize

	super initialize.
	self addClickedActionBlock: [self toggleChecked].
	self extent: self class defaultSize