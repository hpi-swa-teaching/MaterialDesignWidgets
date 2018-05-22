as yet unclassified
initialize

	| dialog button |
	super initialize.
	
	dialog := MDDialog new
		title: 'Reset settings?';
		text: 'This will reset your device to its default factory settings.';
		yourself.
	self dialog: dialog.
	
	button := MDContainedButton new.
	button 
		text: 'Open Dialog';
		target: [ self dialog open ];
		actionSelector: #value.
	self addWidget: button