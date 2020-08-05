initialization
buildCustomColorPicker

	| colorPicker applyColor |
	
	colorPicker := ColorPickerMorph new.

	applyColor := MDOutlinedButton new
		hResizing: #spaceFill;
		text: 'Apply Custom Color';
		addClickedActionBlock: [
			MDColorTheme currentTheme
				perform: self selectedColorProperty
				with: colorPicker selectedColor];
		yourself.
		
	^ {colorPicker.
		Morph new
			width: 0;
			height: self class brightnessButtonSpacing;
			color: Color transparent;
			yourself.
		applyColor.
		Morph new
			width: 0;
			height: self class brightnessButtonSpacing * 2;
			color: Color transparent;
			yourself.
		}