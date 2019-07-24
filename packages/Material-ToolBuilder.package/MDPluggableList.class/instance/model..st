accessing
model: anObject

	self model ifNotNil: [self model removeDependent: self].
	anObject ifNotNil: [anObject addDependent: self].
	model := anObject