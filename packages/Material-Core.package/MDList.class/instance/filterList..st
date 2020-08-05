filtering
filterList: aString

	self filteredListItems: self listItems.
	self lastKeystrokes: aString.
	self 
		filterList;
		changed