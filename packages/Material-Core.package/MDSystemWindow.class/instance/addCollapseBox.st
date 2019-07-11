as yet unclassified
addCollapseBox
	
	labelArea ifNil: [^ self].
	collapseBox ifNotNil: [collapseBox delete].
	collapseBox := self createCollapseBox.
	labelArea addCollapseBox: collapseBox