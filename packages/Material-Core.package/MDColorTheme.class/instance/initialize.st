initialization
initialize

	self primaryColor: (self class defaultPrimaryColor).
	self secondaryColor: (self class defaultSecondaryColor).
	self secondaryColorDark: (self class defaultSecondaryColor darker).
	self backgroundColor: (self class defaultBackgroundColor).
	self surfaceColor: (self class defaultSurfaceColor).
	self errorColor: (self class defaultErrorColor).
	self textColorOptions: (self class defaultTextColors).
	self disabledColor: (self class defaultDisabledColor).
	self dividerColor: (self class defaultDividerColor)