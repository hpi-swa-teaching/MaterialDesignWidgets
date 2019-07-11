as yet unclassified
addMenuControl
	
	labelArea ifNil: [^ self].
	menuBox ifNotNil: [menuBox delete].
	menuBox := self createMenuBox.
	menuBox layoutFrame: self class menuBoxFrame.
	labelArea addMenuControl: menuBox