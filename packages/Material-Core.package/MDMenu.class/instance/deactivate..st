event handling
deactivate: anEvent

	self popUpOwner ifNil: [ 
		self deleteIfPopUp: anEvent.
		^ self].
	
	self selectItem: nil event: anEvent.
	anEvent hand newMouseFocus: self popUpOwner owner.
	anEvent hand newKeyboardFocus: self popUpOwner owner