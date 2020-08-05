event handling
mouseWheel: anEvent
	
	anEvent isWheelUp ifTrue: [self scrollUp: self class scrollDelta].
	anEvent isWheelDown ifTrue: [self scrollDown: self class scrollDelta]