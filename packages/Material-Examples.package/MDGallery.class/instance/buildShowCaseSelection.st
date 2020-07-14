as yet unclassified
buildShowCaseSelection

	| list |
	list := MDList new
		onSelectionChanged: [:item |
			self showCaseMorph removeAllMorphs;
			addMorph: (self perform: (item valueOfProperty: #value))
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 1@1)
			offsets: (0@0 corner: 0@0))
				];
		yourself.
	self class showCaseList do: [ :each |
		| item |
		item := (MDListItem newOnList: list)
			text: each key;
			setProperty: #value toValue: each value;
			yourself.
		list addListItem: item].
	list canDeselect: true.

	^ list
		
		