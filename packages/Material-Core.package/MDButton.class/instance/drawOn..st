drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	aCanvas drawMorph: (self stringMorphCache position: self center - (self stringMorphCache extent // 2))