event handling
newSelectedItem: aListItem executeSelectionChangeBlock: aBoolean

	aListItem state isSelected
		ifTrue: [
			self canDeselect ifTrue: [
				aListItem state deselect.
				self selectedItem: nil]]
		ifFalse: [
			self selectedItem ifNotNil: [:item | item state deselect].
			aListItem state isSelected: true.
			self selectedItem: aListItem executeSelectionChangeBlock: aBoolean]