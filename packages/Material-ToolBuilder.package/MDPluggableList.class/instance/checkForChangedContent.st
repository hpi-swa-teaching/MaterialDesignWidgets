updating
checkForChangedContent
	
	| stringCollection |
	
	self model ifNotNil: [
		stringCollection := self model perform: self getListSelector.
		self listCollection = stringCollection ifFalse: [
			self listCollection: stringCollection.
			self updateList]]