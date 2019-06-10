initialize-release
initialize

	super initialize.
	self
		vResizing: #spaceFill;
		addDropShadow;
		backgroundColor: self class defaultBackgroundColor