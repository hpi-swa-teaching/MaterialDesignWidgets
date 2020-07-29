accessing
currentBackgroundColor

	self state isDeselected ifTrue: [^ self backgroundColor].
	self state isEnabled
		ifTrue: [^ self backgroundColorSelected]
		ifFalse: [^ self backgroundColorDisabled]