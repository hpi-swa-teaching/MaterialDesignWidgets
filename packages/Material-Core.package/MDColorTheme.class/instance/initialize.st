initialize-release
initialize

	self primaryColor: (self class defaultPrimaryColor).
	self secondaryColor: (self class defaultSecondaryColor).
	self backgroundColor: (self class defaultBackgroundColor).
	self surfaceColor: (self class defaultSurfaceColor).
	self errorColor: (self class defaultErrorColor).
	self textColorOptions: (self class defaultTextColors)