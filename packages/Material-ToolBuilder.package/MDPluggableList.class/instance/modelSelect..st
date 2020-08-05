event handling
modelSelect: aModelIndex

	((self model perform: self selected) = aModelIndex)
		ifTrue: [self model perform: self changeSelected with: 0]
		ifFalse: [self model perform: self changeSelected with: aModelIndex]