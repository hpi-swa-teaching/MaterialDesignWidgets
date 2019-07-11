initialization
setFrameForSystemBar

	| frame |
	
	frame := LayoutFrame new.
	frame
		leftFraction: 0;
		leftOffset: self layoutInset negated;
		topFraction: 0;
		rightFraction: 1;
		rightOffset: self layoutInset;
		bottomFraction: 0;
		topOffset: 0;
		bottomOffset: 0.
	systemBar layoutFrame: frame