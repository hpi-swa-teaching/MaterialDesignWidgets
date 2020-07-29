initialization
initialize

	super initialize.
	state := (MDState new
		widget: self;
		yourself).

	self class fontsImported ifFalse: [self class importFonts]