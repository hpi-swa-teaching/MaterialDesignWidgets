components
addCloseBox

	systemBar ifNil: [^ self].
	mustNotClose == true ifTrue: [^ self].
	closeBox ifNotNil: [closeBox delete].
	closeBox := self createCloseBox.
	closeBox layoutFrame: self class closeBoxFrame.
	systemBar addCloseBox: closeBox