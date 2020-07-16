initialization
dialog

	|dialog|
	
	dialog := MDDialog new
		title: 'Basic Dialog';
		content: 'This is just a basic dialog.';
		positiveText: 'OK';
		yourself.
	
	^ self wrapper
		addMorphBack: (MDContainedButton new
			text: 'Open Basic Dialog';
			target: [dialog open];
			actionSelector: #value;
			yourself);
		yourself