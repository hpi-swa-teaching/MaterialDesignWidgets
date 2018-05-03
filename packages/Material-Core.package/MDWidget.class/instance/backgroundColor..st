properties
backgroundColor: aValue

	self setProperty: #backgroundColor to: (self hexToColor: aValue).
	self color: self backgroundColor