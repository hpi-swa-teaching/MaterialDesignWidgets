event handling
handleMouseUp: anEvent
	
	anEvent wasHandled ifTrue: [^ self].
	anEvent hand releaseMouseFocus: self.
	anEvent wasHandled: true.
	self mouseUp: anEvent