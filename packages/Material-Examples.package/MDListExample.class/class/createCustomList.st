construction
createCustomList

	| list |
	list := MDList new.
	
	1 to: 60 do: [ :each |
	| item |
	item := MDListItem newOnList: list.
	item
		text: 'ListItem ', each;
		icon: #ic_turned_in;
		iconRight: #ic_info;
		yourself.

	list addListItem: item].
		
	^ list