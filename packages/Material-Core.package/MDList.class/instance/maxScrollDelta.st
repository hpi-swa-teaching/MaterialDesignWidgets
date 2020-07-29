accessing
maxScrollDelta

	self filteredListItems
		ifEmpty: [^ super maxScrollDelta]
		ifNotEmpty: [
			| visibleItemCount inVisibleItemCount |
			visibleItemCount := (self height / self listItemHeightWithPadding).
			inVisibleItemCount := self filteredListItems size - visibleItemCount.
			self listItems size * self listItemHeightWithPadding < self height ifTrue: [^1].

			^ inVisibleItemCount * self listItemHeightWithPadding]