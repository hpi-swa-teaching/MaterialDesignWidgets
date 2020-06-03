initialization
initialize

	super initialize.
	self 
		width: 450;
		height: 400;
		position: 100 @ 100;
		backgroundColor: MDColorTheme currentTheme backgroundColor;
		beSticky;
		foreNameFirst: true.
	
	self 
		initializeHeadline;
		initializeList;
		initializeMenu;
		initializeBasicDialog;
		initializeInfoDialog;
		initializeCloseButton