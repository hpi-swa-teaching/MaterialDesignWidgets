initialization
buildContentMorph

	^ Morph new
		color: Color transparent;
		layoutInset: 32@16;
		layoutPolicy: ProportionalLayout new;
		addMorph: self buildColorPropertyList
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: -16@0));
		addMorph: self buildColorPicker
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (16@0 corner: 0@0))