drawing
labelPositionOnlyIconRightPresent

	^ (self bounds origin x + self class defaultPadding) @ 
	    (self center y - (self label extent y // 2))