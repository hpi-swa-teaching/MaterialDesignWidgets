accessing
labelContents: anObject
	
	self label contents: anObject.
	self updateBounds.
	
	^ anObject