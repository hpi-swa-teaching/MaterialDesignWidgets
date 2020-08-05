construction
createBasicList

	| list |
	list := MDList new.
	
	1 to: 20 do: [ :each |
	| item |
	item := MDListItem newOnList: list.
	list addListItem: (
			item
			text: 'ListItem ', each;
			yourself)].
		
	^ list