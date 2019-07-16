components
addCloseBox

	systemBar ifNil: [^ self].
	self mustNotClose ifTrue: [^ self].
	closeBox ifNotNil: [closeBox delete].
	closeBox := self createCloseBox.
	closeBox layoutFrame: self class closeBoxFrame.
	systemBar addCloseBox: closeBox