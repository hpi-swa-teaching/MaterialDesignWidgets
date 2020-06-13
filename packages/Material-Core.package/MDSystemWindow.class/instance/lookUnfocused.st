colors
lookUnfocused

	self isLookingFocused ifFalse: [^ self].
	self isLookingFocused: false.

	label ifNotNil: [label materialEmphasis: #disabled].
	self dimWindowButtons.
	self paneColorToUseWhenNotActive in: [:col |
		self adoptPaneColor: col]