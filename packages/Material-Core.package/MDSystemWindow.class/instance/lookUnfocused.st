colors
lookUnfocused
	"See #lookFocused, #activate, and #passivate."

	self isLookingFocused ifFalse: [^ self].
	self isLookingFocused: false.

	label ifNotNil: [label color: Color gray].
	self dimWindowButtons.
	self paneColorToUseWhenNotActive in: [:col |
		self
			 setStripeColorsFrom: col ;
			 adoptPaneColor: col]