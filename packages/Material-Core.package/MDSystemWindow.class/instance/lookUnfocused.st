colors
lookUnfocused

	self isLookingFocused ifFalse: [^ self].
	self isLookingFocused: false.

	label ifNotNil: [label color: Color gray].
	self dimWindowButtons.
	self paneColorToUseWhenNotActive in: [:col |
		self adoptPaneColor: col]