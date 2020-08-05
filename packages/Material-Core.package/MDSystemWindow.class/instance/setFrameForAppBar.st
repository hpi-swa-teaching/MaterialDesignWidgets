components
setFrameForAppBar

	| frame |
	
	self appBar ifNil: [^ self].	
	self appBar
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
	label  hResizing: #spaceFill.
	
	frame := LayoutFrame new.
	frame
		leftFraction: 0;
		leftOffset: self layoutInset negated;
		topFraction: 0;
		topOffset: (self appBar class denseHeight + self layoutInset) negated;
		rightFraction: 1;
		rightOffset: self layoutInset;
		bottomFraction: 0;
		bottomOffset: self layoutInset negated.
	self appBar layoutFrame: frame