accessing
backgroundColorToggled

	^ self properties at: #backgroundColorToggled ifAbsent: [^ self backgroundColorToggled: self class defaultBackgroundColorToggled]