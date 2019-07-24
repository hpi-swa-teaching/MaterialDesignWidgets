updating
updateList

	| printableObject icon listItem |

	self listItems removeAll.
	1 to: self listCollection size do: [:num | 
		printableObject := self listCollection at: num.
		listItem := (MDPluggableListItem newOnList: self)
				text: printableObject;
				denseLayout: self hasDenseLayout;
				target: [
					((self model perform: self selected) = 0)
						ifFalse: [(self listItems at: (self model perform: self selected)) deselect].
					self model perform: self changeSelected with: num.
					(self listItems at: num) select];
				actionSelector: #value; 
				yourself.
		
		self getIconSelector ifNotNil: [
			icon := self getMaterialIconFrom: (self model perform: self getIconSelector with: num).
			icon ifNotNil: [listItem icon: icon]].
		self addListItem: listItem]