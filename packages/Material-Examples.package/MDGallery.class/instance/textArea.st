initialization
textArea

	^ self wrapper
		addMorphBack: MDTextArea new;
		addMorphBack: (self spacerWithSpacing: 32);
		addMorphBack: (MDTextField
			label: 'Name'
			placeholder: 'What do people call you'
			helper: 'Lastname not firstname');
		yourself
