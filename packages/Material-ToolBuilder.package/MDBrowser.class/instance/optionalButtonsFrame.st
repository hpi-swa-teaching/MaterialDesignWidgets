toolbuilder
optionalButtonsFrame

	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 1 offset: self buttonHeight negated - (self buttonPadding / 2);
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: (self buttonPadding / 2) negated