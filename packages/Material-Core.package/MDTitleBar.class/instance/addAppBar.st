initialization
addAppBar

	appBar ifNotNil: [appBar abandon].
	appBar := MDAppBar new.
	appBar height: self appBarHeight.
	self addMorph: appBar