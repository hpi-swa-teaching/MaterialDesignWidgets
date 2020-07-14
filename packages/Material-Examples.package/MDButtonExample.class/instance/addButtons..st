accessing
addButtons: aMDButtonClass

	| button buttonDisabled buttonIcon |
	
	button := aMDButtonClass new.
	button
		text: 'Secondary';
		textColor: (self class currentTheme textColorOn: self class currentTheme secondaryColor);
		backgroundColor: self class currentTheme secondaryColor.
	button borderRadius: (MDBorderRadius left: 2 right: 8).
	
	buttonIcon := aMDButtonClass icon: #ic_shopping_cart.
	buttonIcon text: 'Add to cart'.
	
	buttonDisabled := aMDButtonClass new.
	buttonDisabled
		text: 'Disabled';
		disable.
	
	self
		addWidget: aMDButtonClass new;
		addWidget: button;
		addWidget: buttonIcon;
		addWidget: buttonDisabled