initialization
buildColorPicker

	| list |
	list := MDList new
		showDividers: false;
		onSelectionChanged: [:item |
			self onColorSelected: (item valueOfProperty: #value)];
		yourself.
	MDColor allColors do: [ :each |
		| item |
		item := (MDListItem newOnList: list)
			text: each key;
			setProperty: #value toValue: each value;
			backgroundColor: (each value
				alphaMixed: 0.3
				with: MDColorTheme currentTheme surfaceColor);
			yourself.
		list addListItem: item].
	list canDeselect: false.

	^ list