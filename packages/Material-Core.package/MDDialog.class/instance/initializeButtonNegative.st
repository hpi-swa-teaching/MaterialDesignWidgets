initialization
initializeButtonNegative

	| button |
	button := MDTextButton new.
	button 
		text: 'Cancel';
		target: [ self close ];
		actionSelector: #value.
	
	self 
		buttonNegative: button;
		addMorph: self buttonNegative