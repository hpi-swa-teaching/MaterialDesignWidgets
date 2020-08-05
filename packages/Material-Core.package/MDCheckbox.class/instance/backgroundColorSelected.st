accessing
backgroundColorSelected

	^ self properties at: #backgroundColorSelected ifAbsent: [^ self backgroundColorSelected: self class defaultBackgroundColorSelected]