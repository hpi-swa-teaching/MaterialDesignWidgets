initialization
initialize

	super initialize.
	self cornerStyle: #rounded.
	self cornerRadius: 8.
	self
		vResizing: #spaceFill;
		backgroundColor: self class defaultBackgroundColor
	