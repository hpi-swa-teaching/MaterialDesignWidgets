event handling
performAction

	self enabled ifFalse: [^ self].
	self action ifNotNil: [^ self action value].
	self askBeforeChanging ifTrue: [self model okToChange ifFalse: [^ self]].
	self actionSelector ifNotNil: [
		self actionSelector numArgs = 0
			ifTrue: [self model perform: self actionSelector]]