components
addMenuControl
	
	self appBar ifNil: [^ self].
	menuBox ifNotNil: [menuBox delete].
	menuBox := self createMenuBox.
	menuBox layoutFrame: self class menuBoxFrame.
	self appBar addMenuControl: menuBox