initialization
initialize

	super initialize.
	self
		backgroundColor: MDColorTheme currentTheme backgroundColor;
		scrollbar: (MDScrollbar newOn: self);
		addMorph: (self scrollbar)