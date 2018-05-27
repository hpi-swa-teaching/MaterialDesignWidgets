accessing
addIconButtons

	| textButton outlinedButton containedButton |
	
	textButton := MDTextButton icon: #iconThumbsUp.
	
	outlinedButton := MDOutlinedButton icon: #iconBell.
	outlinedButton
		text: 'Button Text';
		textColor: '#F44336'.
	
	containedButton := MDOutlinedButton icon: #iconCrosshairs.
	containedButton
		text: 'Disabled';
		disable.
	
	self
		addWidget: textButton; 
		addWidget: outlinedButton;
		addWidget: containedButton