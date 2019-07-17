accessing
textColorToggled

	^ self properties at: #textColorToggled ifAbsent: [^ self textColorToggled: self class defaultTextColorToggled]