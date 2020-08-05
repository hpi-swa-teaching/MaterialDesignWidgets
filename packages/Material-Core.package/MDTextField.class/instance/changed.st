updating
changed

	self currentBorderColor: (self state isFocused
		ifTrue: [self borderColor]
		ifFalse: [self class inactiveColor]).
	self currentBorderWidth: (self state isFocused
		ifTrue: [self class defaultActivatedBorderWidth]
		ifFalse: [self class defaultBorderWidth]).

	self state isFocused
		ifTrue: [self activateLabel]
		ifFalse: [self deactivateLabel].

	self placeholder visible:
		(self state isFocused and: [self textMorph text isEmpty]).

	super changed