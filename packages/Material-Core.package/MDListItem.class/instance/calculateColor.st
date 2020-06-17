accessing
calculateColor

	(self class defaultBackgroundColorSelected isKindOf: UndefinedObject) ifTrue: [self abandon. self halt.].
	((self properties at: #currentBackgroundColor) isKindOf: UndefinedObject) ifTrue: [self abandon. self halt.].
	((self textColor) isKindOf: UndefinedObject) ifTrue: [self abandon. self halt.].
	((self defaultTextColorSelected) isKindOf: UndefinedObject) ifTrue: [self abandon. self halt.].
	self isSelected
		ifTrue: [
			self properties at: #currentBackgroundColor put: self class defaultBackgroundColorSelected.
			self label color: self class defaultTextColorSelected]
		ifFalse: [
			self label color: self textColor.
			super calculateColor]