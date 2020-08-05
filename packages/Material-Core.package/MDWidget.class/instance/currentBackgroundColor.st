accessing
currentBackgroundColor

	self state isDisabled
		ifTrue: [^ self backgroundColorDisabled]
		ifFalse: [^ self backgroundColor]