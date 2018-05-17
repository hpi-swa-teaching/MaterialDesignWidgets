drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	self updateStringPosition.
	self stringMorphCache drawOn: aCanvas