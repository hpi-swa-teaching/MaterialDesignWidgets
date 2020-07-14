as yet unclassified
checkboxes

	^ self wrapper
		addMorphBack: (self checkboxWithText: 'Option A');
		addMorphBack: (self checkboxWithText: 'Ich hasse Squeak');
		yourself