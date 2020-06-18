components
setFrameForSystemBar
	
	| frame |
	
	self systemBar ifNil: [^ self].	
	self systemBar
		layoutPolicy: TableLayout new;
		listDirection: #rightToLeft;
		hResizing: #spaceFill;
		layoutInset: self layoutInset.
	label hResizing: #spaceFill.
	
	frame := LayoutFrame new.
	frame
		leftFraction: 0;
		leftOffset: self layoutInset negated;
		topFraction: 0;
		topOffset: (self layoutInset + self labelHeight) negated;
		rightFraction: 1;
		rightOffset: self layoutInset;
		bottomFraction: 0;
		bottomOffset: (self appBar class denseHeight + self layoutInset) negated.
	self systemBar layoutFrame: frame