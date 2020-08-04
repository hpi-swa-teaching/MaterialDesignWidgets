events-processing
textChanged

	self placeholder visible: self isEmpty.
	self executeTextChangedActionBlocks.
	self isEmpty
		ifTrue: [
			self deactivateLabel.
			self state deactivate]
		ifFalse: [
			self activateLabel.
			self state activate]
