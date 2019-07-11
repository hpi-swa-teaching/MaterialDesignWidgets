as yet unclassified
addExpandBox

	labelArea ifNil: [^ self].
	self class hideExpandButton ifTrue: [^ self].
	expandBox ifNotNil: [expandBox delete].
	expandBox := self createExpandBox.
	expandBox layoutFrame: self class expandBoxFrame.
	labelArea addExpandBox: expandBox