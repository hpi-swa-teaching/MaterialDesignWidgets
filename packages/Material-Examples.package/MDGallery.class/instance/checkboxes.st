initialization
checkboxes

	^ self wrapper
		addMorphBack: (self checkboxWithText: 'Option A');
		addMorphBack: (self checkboxWithText: 'Option B');
		yourself