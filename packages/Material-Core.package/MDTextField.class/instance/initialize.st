initialization
initialize 

	super initialize.

	self
		initializeLabel: self class defaultLabel;
		initializePlaceholder: self class defaultPlaceholderText;
		initializeHelper: self class defaultHelperText;
		initializeTextMorph;
		initializeScrollPane.
	self scrollPane scroller addMorph: self textMorph.
	self
		addMorph: self scrollPane;
		setBoundsWidth: self class defaultWidth