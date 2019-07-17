components
setFrameForSystemBar
	
	| frame |
	
	systemBar ifNil: [^ self].	
	systemBar
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
		rightFraction: 1;
		rightOffset: self layoutInset;
		bottomFraction: 0;
		topOffset: (self appBarHeight + self systemBarHeight + appBar bottomShadow + self layoutInset) negated;
		bottomOffset: (appBar bottomShadow + self appBarHeight) negated.
	systemBar layoutFrame: frame