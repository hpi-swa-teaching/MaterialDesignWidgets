accessing
currentBackgroundColor

	self state isDeselected
		ifTrue: [^ self backgroundColor]
		ifFalse: [
			self state isEnabled
				ifTrue: [^ self backgroundColorSelected]
				ifFalse: [^ self backgroundColorDisabled]]