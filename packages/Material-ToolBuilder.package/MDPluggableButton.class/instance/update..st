updating
update: anObject

	self getLabelSelector ifNotNil: [:sel |
		anObject == sel ifTrue: [self labelContents: (model perform: sel)]].

	self getStateSelector ifNotNil: [:sel |
		anObject == sel ifTrue: [self state enable]].

	"self getColorSelector ifNotNil: [:sel |
		anObject == sel ifTrue: [self backgroundColor: (self model perform: sel) ]]."

	self getEnabledSelector ifNotNil: [:sel |
		anObject == sel ifTrue: [self state isEnabled: (model perform: sel)]].

	self updateMap ifNotNil:
		[(self updateMap at: anObject ifAbsent: [])
			ifNotNil: [ :newTarget | self update: newTarget]]