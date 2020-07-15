updating
changed

	self currentBorderColor: (self state isActivated
		ifTrue: [self borderColor]
		ifFalse: [self class inactiveColor]).
	self currentBorderWidth: (self state isActivated
		ifTrue: [self class defaultActivatedBorderWidth]
		ifFalse: [self class defaultBorderWidth]).

	self state isActivated
		ifTrue: [self activateLabel]
		ifFalse: [self deactivateLabel].

	self placeholder visible:
		(self state isActivated and: [self textMorph text isEmpty]).

	super changed