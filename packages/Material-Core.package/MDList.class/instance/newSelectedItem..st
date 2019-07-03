event handling
newSelectedItem: aListItem

	aListItem isSelected 
		ifTrue: [
			aListItem deselect. 
			self selectedItem: nil]
		ifFalse: [
			self selectedItem ifNotNil: [:item | item deselect].
			aListItem select.
			self selectedItem: aListItem]