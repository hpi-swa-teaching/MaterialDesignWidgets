event handling
toggleOn
	
	self isDisabled ifTrue: [^ self].
	self toggled: true