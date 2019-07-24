keystrokes
previewKeystroke: anEvent

	^ self keystrokePreviewSelector 
		ifNil: [false]
		ifNotNil: [self model perform: self keystrokePreviewSelector with: anEvent]