accessing
backgroundColorSelected

	^ backgroundColorSelected ifNil: [self backgroundColorSelected: self class defaultBackgroundColorSelected]