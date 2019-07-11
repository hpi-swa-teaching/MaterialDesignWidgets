initialization
setFrameForAppBar

	| frame |
	
	frame := LayoutFrame new.
	frame
		leftFraction: 0;
		leftOffset: self layoutInset negated;
		topFraction: 0;
		rightFraction: 1;
		rightOffset: self layoutInset;
		bottomFraction: 0;
		topOffset: 100;
		bottomOffset: 0.
	appBar layoutFrame: frame