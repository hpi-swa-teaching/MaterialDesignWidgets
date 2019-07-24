event handling
handlesMouseOver: anEvent
	
	self isToggled ifTrue: [^ false].
	
	^ super handlesMouseOver: anEvent