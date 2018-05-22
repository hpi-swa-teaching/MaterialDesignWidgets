accessing
addWidget: aMDWidget

	| widget row column |
	widget := aMDWidget.
	
	row := (self widgets size / self itemsPerRow) floor.
	column := self widgets size - (row * self itemsPerRow).
	
	column = 0 
		ifTrue: [
			widget position: self position + self class padding + (0 @ (self maxHeight + (column * self class widgetPadding y))).
			self maxHeight: 0 ]
		ifFalse: [
			widget position: self widgets last bounds corner x @ self widgets last position y + (column * self class widgetPadding x @ 0) ].
	
	(row > 0 and: column = 0) ifTrue: [
		widget position: widget position + (0 @ self class widgetPadding y)].
	
	self maxHeight: (self maxHeight max: aMDWidget height).
	self widgets add: widget.
	self addMorph: widget