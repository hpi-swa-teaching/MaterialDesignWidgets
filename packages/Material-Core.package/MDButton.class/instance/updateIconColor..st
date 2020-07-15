drawing
updateIconColor: aMDIcon

	self state isEnabled ifTrue: [aMDIcon svgColor: self textColor]  