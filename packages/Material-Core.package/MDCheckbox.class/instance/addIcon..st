accessing
addIcon: aMDIcon
	
	self icon ifNotNil: [ self removeMorph: self icon ].
	aMDIcon size: self class defaultIconSize.
	aMDIcon svgColor: self textColor.
	aMDIcon position:  (self position x + self class defaultIconPadding) @ (self position y + ((self height - self icon height) // 2)).
	self icon: aMDIcon.
	self addMorphBack: aMDIcon