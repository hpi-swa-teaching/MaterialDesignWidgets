accessing
addIcon: aMDIcon
	
	self removeIcon.
	aMDIcon size: self extent.
	aMDIcon svgColor: self textColor.
	aMDIcon position:  self position.
	self icon: aMDIcon.
	self addMorphBack: aMDIcon