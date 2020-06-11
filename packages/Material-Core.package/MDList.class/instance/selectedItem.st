accessing
selectedItem

	^ self properties at: #selectedItem ifAbsent: [nil]