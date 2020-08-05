initialization
button

	| disabledButton |
	disabledButton := MDButton new
		text: 'Disabled';
		yourself.
	disabledButton state disable.
	
	^ self wrapper
		addMorphBack: MDButton new;
		addMorphBack: self spacer;
		addMorphBack: (MDButton new
			text: 'Secondary';
			textColor: (self currentTheme textColorOn: self currentTheme secondaryColor);
			backgroundColor: self currentTheme secondaryColor;
			borderRadius: (MDBorderRadius left: 2 right: 8);
			yourself);
		addMorphBack: self spacer;
		addMorphBack: ((MDButton icon: #ic_shopping_cart)
			text: 'Add to cart';
			yourself);
		addMorphBack: self spacer;
		addMorphBack: disabledButton;
		yourself
