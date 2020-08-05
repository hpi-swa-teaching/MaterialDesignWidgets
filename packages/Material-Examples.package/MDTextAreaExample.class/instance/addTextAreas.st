accessing
addTextAreas

	self 
		addWidget: (MDTextArea
						label: 'Label Text'
						placeholder: 'This is a placeholder text'
						helper: 'This is a helper text');
		addWidget: (MDMultiLineField 
						label: 'Label Text'
						placeholder: 'This is a placeholder text'
						helper: 'This is a helper text');
		addWidget: MDTextField new