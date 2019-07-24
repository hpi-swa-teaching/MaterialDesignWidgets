filtering
filterList: aString
	"Manually set the list filter."

	self filteredListItems: self listItems.
	self lastKeystrokes: aString.
	self 
		filterList;
		changed