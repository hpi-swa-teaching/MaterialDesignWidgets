accessing
title: aString
	
	| text |
	text := self setProperty: #title to: aString.
	self titleMorphCache contents: text.
	self updateWidth.
	
	^ text