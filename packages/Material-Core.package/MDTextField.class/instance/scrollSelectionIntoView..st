editor access
scrollSelectionIntoView: anEvent
	
	textMorph editor hasSelection
		ifFalse: [self scrollPane scrollToShow: (textMorph editor startBlock withWidth: 1)]
		ifTrue: [
			self scrollPane scrollToShow: (textMorph editor startBlock topLeft corner: textMorph editor stopBlock bottomLeft).
			self scrollPane scrollToShow: (textMorph editor pointBlock withWidth: 1)].
		
	^ true