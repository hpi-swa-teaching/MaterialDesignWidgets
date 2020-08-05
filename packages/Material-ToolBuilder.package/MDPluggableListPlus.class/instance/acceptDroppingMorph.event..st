drag and drop
acceptDroppingMorph: aTransferMorph event: anEvent
	
	dropItemSelector ifNil: [^ self].
	potentialDropRow ifNil: [^ self].
	
	model
		perform: dropItemSelector
		withEnoughArguments: {
			aTransferMorph passenger.
			self potentialDropRow.
			aTransferMorph shouldCopy.
			aTransferMorph}.
			
	self resetPotentialDropRow.
	anEvent hand releaseMouseFocus: self.
	Cursor normal show
