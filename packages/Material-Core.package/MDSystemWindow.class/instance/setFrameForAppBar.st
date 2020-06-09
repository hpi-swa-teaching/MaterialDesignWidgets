components
setFrameForAppBar

	| frame |
	
	appBar ifNil: [^ self].	
	appBar
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
	label  hResizing: #spaceFill.
	
	frame := LayoutFrame new.
	frame
		leftFraction: 0;
		leftOffset: self layoutInset negated;
		topFraction: 0;
		topOffset: (self class appBarHeight + self layoutInset) negated;
		rightFraction: 1;
		rightOffset: self layoutInset;
		bottomFraction: 0;
		bottomOffset: self layoutInset negated.
	appBar layoutFrame: frame