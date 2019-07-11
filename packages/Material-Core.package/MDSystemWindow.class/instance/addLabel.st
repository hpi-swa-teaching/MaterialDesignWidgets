as yet unclassified
addLabel

	(labelArea isNil or: [label isNil]) ifTrue: [^ self].
	labelArea 
		addLabel: (Morph new extent: self class borderWidth @ 0);
		addLabel: label.
	label on: #startDrag send: #startDragFromLabel: to: self.
	self class clickOnLabelToEdit
		ifTrue: [label on: #mouseUp send: #relabel to: self].
	self class doubleClickOnLabelToExpand
		ifTrue: [label on: #doubleClick send: #expandBoxHit to: self]