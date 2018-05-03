drawing
drawRippleOn: aCanvas
	
	| corner position size max |
	self showRipple 
		ifTrue: [
			max := self width + self height.
			size := (self rippleSize+0.1) * max.
			position := self rippleCenter - (0.5*size).
			corner := position + size.
			
			aCanvas fillOval: (position corner: corner) color: (Color white alpha: 0.3) ]
	