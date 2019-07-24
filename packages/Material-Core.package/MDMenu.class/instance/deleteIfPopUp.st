control
deleteIfPopUp

	self delete.
	(self popUpOwner notNil and: [self popUpOwner isKindOf: MDMenuItem]) ifTrue: [
		self popUpOwner isSelected: false.
		(self popUpOwner owner isKindOf: MDMenu)
			ifTrue: [self popUpOwner owner deleteIfPopUp]]
