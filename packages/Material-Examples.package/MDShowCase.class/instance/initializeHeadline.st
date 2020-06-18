initialization
initializeHeadline

	| label |
	label := MDLabel contents: 'Contacts' fontTag: #H4.
	label
		x: self width / 2;
		y: 20;
		position: label position + self position;
		color: MDColorTheme textColorOnBackground.
	self addMorph: label