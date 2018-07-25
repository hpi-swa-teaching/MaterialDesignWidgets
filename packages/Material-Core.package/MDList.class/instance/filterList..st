filtering
filterList: aString
	"Manually set the list filter."

	self filteredListItems: self listItems.
	self lastKeystrokes: aString.
	self 
		filterList;
		changed.

	"self changeModelSelection: (list ifEmpty: [0] ifNotEmpty: [self modelIndexFor: 1])."