initialization
initialize

	super initialize.
	
	self
		beSticky;
		height: 150;
		width: 300;
		borderRadius: 3;
		backgroundColor: '#FFFFFF';
		initializeButtons.
		
	self titleMorphCache position: self titleMorphCache position + self class padding.
	self textMorphCache position: self titleMorphCache position + (0@self titleMorphCache height) + self class containerPadding.