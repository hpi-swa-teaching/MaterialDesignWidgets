accessing
changeIconName: anIconNameSymbol

	self svg: (self class perform: (anIconNameSymbol ifNil: [#iconEmpty])) svg.
	
	self cachedForm: nil.
	self changed