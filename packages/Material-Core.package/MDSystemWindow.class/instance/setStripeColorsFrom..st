colors
setStripeColorsFrom: paneColor

	labelArea ifNotNil: [labelArea color: MDColorTheme currentTheme primaryColor].
	self updateBoxesColor: paneColor.
	stripes ifNil: [^ self].

	self class gradientWindow
		ifTrue: [self fillStyle: (self gradientWithColor: paneColor)]
		ifFalse: [self color: paneColor].