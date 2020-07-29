keystrokes
handlesEscStroke: anEvent

	anEvent keyValue = self class escapeKeyValue ifFalse: [^false].
	self deactivate: anEvent.

	^ true