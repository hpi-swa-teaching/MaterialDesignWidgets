accessing
backgroundColorDisabled

	^ self properties at: #backgroundColorDisabled ifAbsent: [^ self backgroundColorDisabled: self class defaultBackgroundColorDisabled]