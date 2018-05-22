initialization
initializeButtonPositive

	| button |
	button := MDTextButton new.
	button text: 'Accept'.

	self 
		buttonPositive: button;
		addMorph: self buttonPositive