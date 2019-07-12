initialize-release
addLabelArea

	systemBar ifNotNil: [systemBar abandon].
	systemBar := MDSystemBar new.
	self addMorph: systemBar.
	appBar ifNotNil: [appBar abandon].
	appBar := MDAppBar new.
	self addMorph: appBar 