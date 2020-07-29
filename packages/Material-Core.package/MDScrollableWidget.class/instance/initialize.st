initialization
initialize

	super initialize.
	self
		backgroundColor: self class defaultBackgroundColor;
		scrollbar: (MDScrollbar newOn: self);
		addMorph: self scrollbar