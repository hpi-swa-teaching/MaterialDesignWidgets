colors
lookFocused
	
	self isLookingFocused ifTrue: [^ self].
	self isLookingFocused: true.

	label ifNotNil: [
		label color: (MDColorTheme currentTheme textColorOn: MDColorTheme currentTheme primaryColor)].
	
	(self isKeyWindow or: [self class windowTitleActiveOnFirstClick])
		ifTrue: [self undimWindowButtons].
		
	self paneColorToUse in: [:color |
		self adoptPaneColor: color]