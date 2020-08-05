drop shadows
addDropShadow

	self hasDropShadow ifTrue: [^ self].

	super addDropShadow.
	self defaultShadow