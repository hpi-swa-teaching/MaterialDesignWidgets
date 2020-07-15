accessing
addButtons: aMDButtonClass

	| button buttonDisabled buttonIcon |
	
	button := aMDButtonClass new.
	button
		text: 'Secondary';
		textColor: (MDColorTheme currentTheme textColorOn: MDColorTheme currentTheme secondaryColor);
		backgroundColor: MDColorTheme currentTheme secondaryColor.
	button borderRadius: (MDBorderRadius left: 2 right: 8).
	
	buttonIcon := aMDButtonClass icon: #ic_shopping_cart.
	buttonIcon text: 'Add to cart'.
	
	buttonDisabled := aMDButtonClass new.
	buttonDisabled text: 'Disabled'.
	buttonDisabled state isDisabled: true.
	
	self
		addWidget: aMDButtonClass new;
		addWidget: button;
		addWidget: buttonIcon;
		addWidget: buttonDisabled