event handling
mouseDown: anEvent
	"Details: If this button is triggered on mouse down or the event is the menu gesture, handle it immediately. Otherwise, make a list of buttons (including the receiver) for mouseMove feedback. This allows a simple radio-button effect among the button submorphs of a given morph."

	self allButtons: nil.
	anEvent yellowButtonPressed ifTrue: [^ self invokeMenu: anEvent].
	self triggerOnMouseDown ifFalse: [
		self allButtons: (owner submorphs select: [:morph | 
			morph class = self class])].
	super mouseDown: anEvent
