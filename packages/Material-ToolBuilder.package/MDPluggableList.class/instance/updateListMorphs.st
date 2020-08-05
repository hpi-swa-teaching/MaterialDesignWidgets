updating
updateListMorphs

	self listItems removeAll.
	1 to: self listCollection size do: [:num | 
		| text |
		text := self listCollection at: num.
		self addListItem: (
			(MDPluggableListItem newOnList: self)
				text: text;
				target: [
					((self model perform: self selected) = 0) ifFalse: [
						(self listItems at: (self model perform: self selected))
							state isSelected: false].
					self model perform: self changeSelected with: num.
					(self listItems at: num) state isSelected: true];
				actionSelector: #value; 
				yourself)]