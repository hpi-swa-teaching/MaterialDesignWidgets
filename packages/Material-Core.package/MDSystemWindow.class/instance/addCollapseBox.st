components
addCollapseBox
	
	systemBar ifNil: [^ self].
	collapseBox ifNotNil: [collapseBox delete].
	collapseBox := self createCollapseBox.
	systemBar addCollapseBox: collapseBox