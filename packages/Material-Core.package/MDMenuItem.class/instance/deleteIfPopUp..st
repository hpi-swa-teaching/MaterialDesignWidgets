initialization
deleteIfPopUp: anEvent
	
	self owner ifNotNil: [self owner deleteIfPopUp: anEvent]