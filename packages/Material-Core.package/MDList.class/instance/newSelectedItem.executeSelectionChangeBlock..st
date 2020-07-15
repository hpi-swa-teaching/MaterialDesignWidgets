event handling
newSelectedItem: aListItem executeSelectionChangeBlock: aBoolean

	aListItem state isSelected
		ifTrue: [
			self canDeselect ifTrue: [
				aListItem state isSelected: false.
				self selectedItem: nil]]
		ifFalse: [
			self selectedItem ifNotNil: [:item | item state isSelected: false].
			aListItem state isSelected: true.
			self selectedItem: aListItem executeSelectionChangeBlock: aBoolean]