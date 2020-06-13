event handling
newSelectedItem: aListItem executeSelectionChangeBlock: aBoolean

	aListItem isSelected 
		ifTrue: [
			self canDeselect ifTrue: [
				aListItem deselect. 
				self selectedItem: nil]]
		ifFalse: [
			self selectedItem ifNotNil: [:item | item deselect].
			aListItem select.
			self selectedItem: aListItem executeSelectionChangeBlock: aBoolean]