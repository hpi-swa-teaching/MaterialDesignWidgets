drawing
drawOn: aCanvas 

	| ripple |
	
	ripple := self ripple.
	ripple mapColor: (Color white) to: (self clickableMorph textColor alpha: self colorAlpha).
	
	self clickableMorph borderRadius = (0 @ 0 corner: 0 @ 0)
		ifFalse: [self makeBlackPixelsTransparentFor: ripple].
	
	aCanvas translucentImage: ripple at: self clickableMorph position