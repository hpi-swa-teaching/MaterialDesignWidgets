initialization
initialize

	self labelString: 'Material Design Theme Configuration'.
	super initialize.
	
	self
		addMorph: self buildContentMorph
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))