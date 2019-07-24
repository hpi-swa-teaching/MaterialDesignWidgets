event handling
mouseDown: anEvent

	| selectors |
	
	self selectListItem: anEvent.
	
	anEvent yellowButtonPressed 
		ifTrue: [^ self yellowButtonActivity: anEvent shiftPressed].
		
	selectors := Array 
		with: #click:
		with: (doubleClickSelector ifNotNil: [#doubleClick:])
		with: nil
		with: (self dragEnabled 
			ifTrue: [#startDrag:] 
			ifFalse: [nil]).
	anEvent hand waitForClicksOrDrag: self event: anEvent selectors: selectors threshold: HandMorph dragThreshold