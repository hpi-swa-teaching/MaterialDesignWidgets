as yet unclassified
button

	| button buttonDisabled buttonIcon wrapper|
	
	wrapper := self wrapper.
	
	button := MDButton new.
	button
		text: 'Secondary';
		textColor: (self currentTheme textColorOn: self currentTheme secondaryColor);
		backgroundColor: self currentTheme secondaryColor.
	button borderRadius: (MDBorderRadius left: 2 right: 8).
	
	buttonIcon := MDButton icon: #ic_shopping_cart.
	buttonIcon text: 'Add to cart'.
	
	buttonDisabled := MDButton new.
	buttonDisabled
		text: 'Disabled';
		disable.
	
	wrapper
		addWidget: MDButton new;
		addWidget: self spacer;
		addWidget: button;
		addWidget: self spacer;
		addWidget: buttonIcon;
		addWidget: self spacer;
		addWidget: buttonDisabled.
	
	^ wrapper