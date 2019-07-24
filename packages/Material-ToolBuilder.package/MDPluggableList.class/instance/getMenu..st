accessing
getMenu: shiftKeyState
	"Answer the menu for this text view, supplying an empty menu to be filled in. If the menu selector takes an extra argument, pass in the current state of the shift key."
	
	| newMenu aMenu aTitle |
	
	self isNil ifTrue: [^ nil].
	newMenu := MenuMorph new defaultTarget: self model.
	aTitle := self getMenuTitleSelector ifNotNil: [self model perform: self getMenuTitleSelector].
	self menu numArgs = 1 ifTrue:
		[aMenu := self model perform: self menu with: newMenu.
		aTitle ifNotNil:  [aMenu addTitle: aTitle].
		^ aMenu].
	self menu numArgs = 2 ifTrue:
		[aMenu := self model perform: self menu with: newMenu with: shiftKeyState.
		aTitle ifNotNil:  [aMenu addTitle: aTitle].
		^ aMenu].
	
	^ self error: 'The getMenuSelector must be a 1- or 2-keyword symbol'