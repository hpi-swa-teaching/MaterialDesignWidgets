drawing
drawOn: aCanvas

	MDRenderer
		drawBottomBorderOn: aCanvas 
		withBounds: self bounds 
		color: self currentBackgroundColor
		radius: self currentBorderRadius
		borderWidth: self currentBorderWidth
		borderColor: self currentBorderColor.
	
	textMorph paragraph caretColor: (self borderColor adjustSaturation: -0.4 brightness: 1).
	
	self textMorph font: (MDLabel loadFontWithFontTag: #Body2)