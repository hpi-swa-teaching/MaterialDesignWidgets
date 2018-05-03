drawing
drawOn: aCanvas
	
	| corner position size center |
	center := self clickableMorph position + self center.
	size := self calculateSize.
	
	position := center - (0.5 * size).
	corner := position + size.
			
	aCanvas fillOval: (position corner: corner) color: (Color white alpha: self colorAlpha)
	