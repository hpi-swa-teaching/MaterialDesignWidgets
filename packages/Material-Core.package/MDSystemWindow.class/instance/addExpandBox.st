components
addExpandBox

	systemBar ifNil: [^ self].
	self class hideExpandButton ifTrue: [^ self].
	expandBox ifNotNil: [expandBox delete].
	expandBox := self createExpandBox.
	expandBox layoutFrame: self class expandBoxFrame.
	systemBar addExpandBox: expandBox