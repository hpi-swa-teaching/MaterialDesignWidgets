updating
updateAlpha: aValue

	self isVisibleTimeDone 
		ifTrue: [
			self backgroundColor: (self class defaultBackgroundColor alpha: aValue)]