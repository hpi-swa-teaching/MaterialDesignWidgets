accessing
calculateColor

	self isSelected
		ifTrue: [
			self properties at: #currentBackgroundColor put: self class defaultBackgroundColorSelected.
			self label color: self class defaultTextColorSelected]
		ifFalse: [
			self label color: self textColor.
			super calculateColor]