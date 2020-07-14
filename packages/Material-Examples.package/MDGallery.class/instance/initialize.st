as yet unclassified
initialize

	self labelString: 'Material Design Gallery'.
	super initialize.
	
	self
		addMorph: self buildContentMorph
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1))