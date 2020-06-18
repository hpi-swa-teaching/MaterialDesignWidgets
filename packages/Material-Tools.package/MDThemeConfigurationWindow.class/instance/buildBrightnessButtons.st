initialization
buildBrightnessButtons

	| wrapper lightTheme darkTheme |
	wrapper := Morph new
		color: Color transparent;
		layoutPolicy: TableLayout new;
		cellPositioning: #topLeft;
		listDirection: #topToBottom;
		yourself.

	lightTheme := MDOutlinedButton new
		hResizing: #spaceFill;
		text: 'Light theme';
		addClickedActionBlock: [Transcript showln: 'light'];
		"MDColorTheme currentTheme switchToLightTheme"
		yourself.
	darkTheme := MDOutlinedButton new
		hResizing: #spaceFill;
		text: 'Dark theme';
		addClickedActionBlock: [Transcript showln: 'dark'];
		"MDColorTheme currentTheme switchToDarkTheme"
		yourself.

	self buildCustomColorPicker do: [:each | wrapper addMorphBack: each].

	^ wrapper
		addMorphBack: lightTheme;
		addMorphBack: (Morph new
			width: 0;
			height: self class brightnessButtonSpacing;
			color: Color transparent;
			yourself);
		addMorphBack: darkTheme;
		yourself
