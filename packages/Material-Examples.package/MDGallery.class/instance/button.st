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
		addMorphBack: MDButton new;
		addMorphBack: self spacer;
		addMorphBack: button;
		addMorphBack: self spacer;
		addMorphBack: buttonIcon;
		addMorphBack: self spacer;
		addMorphBack: buttonDisabled.
	
	^ wrapper