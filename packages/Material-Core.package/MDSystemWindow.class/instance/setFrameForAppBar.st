components
setFrameForAppBar

	| frame |
	
	appBar ifNil: [^ self].	
	appBar
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		layoutInset: self layoutInset.
	label hResizing: #spaceFill.
	{closeBox. menuBox. expandBox. collapseBox} do: [:box |
		box ifNotNil: [box extent: self boxExtent]].
	
	frame := LayoutFrame new.
	frame
		leftFraction: 0;
		leftOffset: self layoutInset negated;
		topFraction: 0;
		rightFraction: 1;
		rightOffset: self layoutInset;
		bottomFraction: 0;
		topOffset: (appBar bottomShadow + self appBarHeight) negated;
		bottomOffset: appBar bottomShadow negated.
	appBar layoutFrame: frame