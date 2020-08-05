private
getMenu: shiftPressed

	| newMenu |
	
	self getMenuSelector isNil ifTrue: [^ nil].
	newMenu := MenuMorph new defaultTarget: model.
	self getMenuSelector numArgs = 1 
		ifTrue: [^ model perform: self getMenuSelector with: newMenu].
	self getMenuSelector numArgs = 2 
		ifTrue: 
			[^ model 
				perform: self getMenuSelector
				with: newMenu
				with: shiftPressed].
			
	^ self error: 'The getMenuSelector must be a 1- or 2-keyword symbol'