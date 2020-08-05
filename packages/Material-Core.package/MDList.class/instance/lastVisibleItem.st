accessing
lastVisibleItem

	^ (self firstVisibleItem + ((self height / (self listItemHeight + self listItemPadding)) ceiling)) min: self filteredListItems size