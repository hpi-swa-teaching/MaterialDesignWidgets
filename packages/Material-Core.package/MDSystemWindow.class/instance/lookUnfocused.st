colors
lookUnfocused
	"See #lookFocused, #activate, and #passivate."

	self isLookingFocused ifFalse: [^ self].
	self isLookingFocused: false.

	label ifNotNil: [ label color: ((MDColorTheme currentTheme textColorOn: MDColorTheme currentTheme primaryColor) darker darker darker) ].
	self dimWindowButtons.
	self paneColorToUseWhenNotActive in: [ : col |
		self
			 setStripeColorsFrom: col ;
			 adoptPaneColor: col ]