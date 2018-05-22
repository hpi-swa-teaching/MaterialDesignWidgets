initialization
initializeButtonNegative

	| button |
	button := MDTextButton new.
	button text: 'Cancel'.

	self 
		buttonNegative: button;
		addMorph: self buttonNegative