colors
lookFocused
	"Some elements of windows change visually depending on the user input focus. This is property is orthogonal to being active or passive. Active windows can either look focused or unfocused. Passive windows will always look unfocused. Also see #lookUnfocused, #activate, #passivate, and #beKeyWindow."

	self isLookingFocused ifTrue: [^ self].
	self isLookingFocused: true.

	label ifNotNil: [label color: (MDColorTheme currentTheme textColorOn: MDColorTheme currentTheme primaryColor)].
	
	(self isKeyWindow or: [self class windowTitleActiveOnFirstClick])
		ifTrue: [self undimWindowButtons].
		
	self paneColorToUse in: [:color |
		self adoptPaneColor: color]