initialization
initializePlaceholder: aString
	
	self placeholder: (MDLabel contents: aString fontTag: #Body2). 
	self placeholder materialEmphasis: #disabled.
	self placeholder visible: true.
	self addMorph: self placeholder