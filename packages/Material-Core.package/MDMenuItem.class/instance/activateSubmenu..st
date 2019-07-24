event handling
activateSubmenu: anEvent
	
	self subMenu ifNil: [^ false]. 
	(self subMenu fullContainsPoint: anEvent position) ifFalse: [^ false].
	self subMenu activate: anEvent.
	
	^ true