accessing
getCurrentSelectionIndex

	self selected ifNil: [^ 0].
	
	^ self model perform: self selected