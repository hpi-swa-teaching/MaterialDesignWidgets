accessing
text: aString
	"depricated, use labelContents:"
	
	self label contents: aString.
	self updateBounds.
	
	^ aString