as yet unclassified
addCloseBox

	labelArea ifNil: [^ self].
	mustNotClose == true ifTrue: [^ self].
	closeBox ifNotNil: [closeBox delete].
	closeBox := self createCloseBox.
	closeBox layoutFrame: self class closeBoxFrame.
	labelArea addMorphBack: closeBox