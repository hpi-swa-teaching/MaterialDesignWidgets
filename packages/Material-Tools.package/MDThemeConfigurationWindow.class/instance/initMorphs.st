initialization
initMorphs

	| wrapper text |
	wrapper := Morph new
		layoutInset: 64@32;
		layoutPolicy: TableLayout new;
		cellPositioning: #topLeft;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.
	self
		addMorph: wrapper
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	
	text := self buildColorPicker.
	wrapper addMorphBack: text