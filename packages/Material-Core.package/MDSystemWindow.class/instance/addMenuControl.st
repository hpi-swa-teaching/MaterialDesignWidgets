components
addMenuControl
	
	appBar ifNil: [^ self].
	menuBox ifNotNil: [menuBox delete].
	menuBox := self createMenuBox.
	menuBox layoutFrame: self class menuBoxFrame.
	appBar addMenuControl: menuBox