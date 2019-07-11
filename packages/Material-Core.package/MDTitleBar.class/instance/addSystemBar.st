initialization
addSystemBar

	systemBar ifNotNil: [systemBar abandon].
	systemBar := MDSystemBar new.
	systemBar height: self systemBarHeight.
	self addMorph: systemBar