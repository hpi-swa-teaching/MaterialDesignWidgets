drawing
checkToggled

	(self isEnabled and: [self isToggled]) 
		ifTrue: [self currentBackgroundColor: self class defaultBackgroundColorToggled.
			self textColor: self class defaultTextColorToggled]
		ifFalse: [self currentBackgroundColor: self class defaultBackgroundColor.
			self textColor: self class defaultTextColor]
	