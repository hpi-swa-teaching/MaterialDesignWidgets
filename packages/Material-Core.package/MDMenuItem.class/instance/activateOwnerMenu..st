event handling
activateOwnerMenu: anEvent
	
	self owner ifNil: [^ false]. 
	(self owner fullContainsPoint: anEvent position) ifFalse: [^ false].
	self owner activate: anEvent.
	
	^ true