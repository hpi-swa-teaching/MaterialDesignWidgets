accessing
addButtons: aMDButtonClass

	| button buttonDisabled buttonIcon |
	
	button := aMDButtonClass new.
	button
		text: 'Secondary';
		textColor: '#000000';
		backgroundColor: '#018786'.
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