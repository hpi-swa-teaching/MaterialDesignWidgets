accessing
currentBackgroundColor

	self state isSelected ifTrue: [^ self backgroundColorSelected].

	^ super currentBackgroundColor