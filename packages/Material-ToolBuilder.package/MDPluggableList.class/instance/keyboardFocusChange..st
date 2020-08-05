accessing
keyboardFocusChange: aBoolean 

	aBoolean ifFalse: [
		self clearFilterAutomatically ifTrue:
			[self hasFilter ifTrue:
				[self
					 removeFilter;
					 updateList]]].
		
	super keyboardFocusChange: aBoolean