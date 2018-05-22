as yet unclassified
addFlatButtons

	| button |
	self addWidget: MDTextButton new.
	
	button := MDTextButton new.
	button
		text: 'Button Text';
		textColor: '#F44336'.
	self addWidget: button