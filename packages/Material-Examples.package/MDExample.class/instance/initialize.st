initialization
initialize 

	super initialize.
	self 
		width: self class defaultWidth;
		height: self class defaultHeight;
		backgroundColor: MDColorTheme currentTheme backgroundColor;
		beSticky