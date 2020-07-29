event handling
mouseUp: anEvent

	super mouseUp: anEvent.
	self allButtons ifNil: [^ self].
	self allButtons do: [:button |
		(button containsPoint: anEvent cursorPoint)
			ifTrue: [button performAction]].
	self allButtons: nil.
	self changed
