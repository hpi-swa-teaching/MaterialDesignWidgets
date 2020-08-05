accessing
currentBorderWidth

	self state isSelected
		ifTrue: [^ 0]
		ifFalse: [^ super currentBorderWidth]