updating
setUpPositionUpdateConnectionFrom: aSymbol
	
	self
		connect: self scrollableWidget
	 	signal: aSymbol
	   	toSelector: #scrollableWidgetChanged 