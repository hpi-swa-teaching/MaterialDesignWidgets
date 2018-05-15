accessing
drawOn: aCanvas

	| stringMorph |
	super drawOn: aCanvas.
	
	stringMorph := StringMorph contents: self text font: TextStyle defaultFont.
	stringMorph 
		position: self center - (stringMorph extent // 2);
		color: self textColor.
	
	aCanvas drawMorph: stringMorph