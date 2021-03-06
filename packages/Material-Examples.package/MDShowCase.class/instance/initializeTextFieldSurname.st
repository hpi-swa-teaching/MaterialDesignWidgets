initialization
initializeTextFieldSurname

	self textFieldSurname: MDTextField new.
	self textFieldSurname
		labelText: 'Surname';
		placeholderText: 'Insert the name here';
		helperText: 'Make sure to enter the surname';
		addTextChangedActionBlock: self checkContactBlock;
		addTextChangedActionBlock: [self textFieldSurname text size <= 8
										ifTrue: 
											[self textFieldSurname helper contents: 'Make sure to enter the surname'.
											 self textFieldSurname helper color: MDTextField inactiveColor]
										ifFalse:
											[self textFieldSurname helper contents: 'The name is to long!'.
											 self textFieldSurname helper color: MDColorTheme currentTheme errorColor]].
	self textFieldSurname position: ((self textfield position x) @ (170 + self newContact position y)).
	self textFieldSurname width: 200.
	self newContact addMorphBack: self textFieldSurname