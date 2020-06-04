initialization
buildColorPropertyList

	| list |
	list := MDList new
		onSelectionChanged: [:item |
			self selectedColorProperty: (item valueOfProperty: #value)];
		yourself.
	self class colorProperties do: [ :each |
		| item |
		item := (MDListItem newOnList: list)
			text: each key;
			setProperty: #value toValue: each value;
			yourself.
		list addListItem: item].
	list canDeselect: false.

	^ list