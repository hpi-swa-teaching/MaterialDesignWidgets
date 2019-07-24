control
deleteIfPopUp: anEvent

	self delete.
	(self popUpOwner) ifNotNil: [
		self popUpOwner isSelected: false.
		self popUpOwner deleteIfPopUp: anEvent].
	anEvent ifNotNil: [
		anEvent hand releaseMouseFocus: self.
		self originalFocusHolder ifNotNil: [
			anEvent hand newKeyboardFocus: self originalFocusHolder.
			self originalFocusHolder: nil]]