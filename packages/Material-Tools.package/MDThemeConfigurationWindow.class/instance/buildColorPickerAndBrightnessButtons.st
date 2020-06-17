initialization
buildColorPickerAndBrightnessButtons

	| wrapper colorPicker applyColor lightTheme darkTheme |
	wrapper := Morph new
		color: Color transparent;
		layoutPolicy: TableLayout new;
		cellPositioning: #topLeft;
		listDirection: #topToBottom;
		yourself.
		
	colorPicker := ColorPickerMorph new.

	applyColor := MDOutlinedButton new
		hResizing: #spaceFill;
		text: 'Apply Custom Color';
		addClickedActionBlock: [
			MDColorTheme currentTheme perform: self selectedColorProperty with: (colorPicker selectedColor) ];
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

	^ wrapper
		addMorphBack: colorPicker;
		addMorphBack: (Morph new
			width: 0;
			height: self class brightnessButtonSpacing;
			color: Color transparent;
			yourself);
		addMorphBack: applyColor;
		addMorphBack: (Morph new
			width: 0;
			height: self class brightnessButtonSpacing;
			color: Color transparent;
			yourself);
		addMorphBack: lightTheme;
		addMorphBack: (Morph new
			width: 0;
			height: self class brightnessButtonSpacing;
			color: Color transparent;
			yourself);
		addMorphBack: darkTheme;
		yourself