event handling
onColorSelected: aColor

	MDColorTheme currentTheme
		perform: self selectedColorProperty
		with: aColor