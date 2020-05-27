initialization
buildColorPicker

	| list |
	list := MDList new.
	MDColor allColors do: [ :each |
		| item |
		item := (MDListItem newOnList: list)
			text: each key;
			setProperty: #value toValue: each value;
			addClickedActionBlock: [Transcript showln: 'Test'];
			yourself.
		list addListItem: item].
	^ list