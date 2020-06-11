initialization
initializePlaceholder: aString
	
	self placeholder: (MDLabel contents: aString fontTag: #Body2). 
	self placeholder materialEmphasis: #disabled.
	self placeholder visible: false.
	self addMorph: self placeholder