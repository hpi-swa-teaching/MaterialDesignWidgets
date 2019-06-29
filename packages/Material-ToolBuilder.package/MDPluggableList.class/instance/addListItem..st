accessing
addListItem: aListItem
	
	aListItem modelIndex: self listItems size + 1.
	super addListItem: aListItem