example
exampleCascade

	| menu |
	menu := self new.
	menu add: 'Cascade Browser'  target: [SystemBrowser defaultOpenBrowser];
		add: 'Cascade Workspace'  target: [Workspace open];
		add: 'Cascade Transcript'  target: [Transcript open];
		add: 'Cascade Save' target: [Smalltalk saveSession];
		updateBounds.
	
	^ menu
	