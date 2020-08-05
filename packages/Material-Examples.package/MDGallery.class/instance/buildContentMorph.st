initialization
buildContentMorph

	^ Morph new
		color: Color transparent;
		layoutInset: self class contentInset;
		layoutPolicy: ProportionalLayout new;
		addMorph: self buildShowCaseSelection
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: self class contentPaneWidthFraction@1)
			offsets: (0@0 corner: self class contentPaneSpacingHorizontal / 2 negated@0));
		addMorph: self showCaseMorph
		fullFrame: (LayoutFrame
			fractions: (self class contentPaneWidthFraction@0 corner: self class contentPaneWidthFraction * 3@1)
			offsets: (self class contentPaneSpacingHorizontal / 2@0 corner: self class contentPaneSpacingHorizontal / 2 negated@0))