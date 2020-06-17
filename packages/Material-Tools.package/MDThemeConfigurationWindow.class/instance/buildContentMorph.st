initialization
buildContentMorph

	^ Morph new
		color: Color transparent;
		layoutInset: self class contentInset;
		layoutPolicy: ProportionalLayout new;
		addMorph: self buildColorPropertyList
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: self class contentPaneWidthFraction@1)
			offsets: (0@0 corner: self class contentPaneSpacingHorizontal / 2 negated@0));
		addMorph: self buildColorPicker
		fullFrame: (LayoutFrame
			fractions: (self class contentPaneWidthFraction@0 corner: self class contentPaneWidthFraction * 2@1)
			offsets: (self class contentPaneSpacingHorizontal / 2@0 corner: self class contentPaneSpacingHorizontal / 2 negated@0));
		addMorph: self buildColorPickerAndBrightnessButtons
		fullFrame: (LayoutFrame
			fractions: (self class contentPaneWidthFraction * 2@0 corner: 1@1)
			offsets: (self class contentPaneSpacingHorizontal / 2@0 corner: 0@0))