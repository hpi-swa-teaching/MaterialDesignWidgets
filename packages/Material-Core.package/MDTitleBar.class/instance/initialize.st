initialization
initialize

	super initialize.
	self
		addSystemBar;
		addAppBar;
		setFrameForSystemBar;
		setFrameForAppBar;
		vResizing: #spaceFill;
		addDropShadow