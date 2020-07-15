accessing
textColorSelected

	^ textColorSelected ifNil: [self textColorSelected: self class defaultTextColorSelected]