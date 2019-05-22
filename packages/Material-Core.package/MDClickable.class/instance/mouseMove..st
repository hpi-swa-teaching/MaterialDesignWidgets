event handling
mouseMove: anEvent

	| mouseHovers |
	mouseHovers := (self containsPoint: anEvent position).
	
	(self isHovered and: mouseHovers not) ifTrue: [
		self mouseLeave: anEvent].
	(self isHovered not and: mouseHovers) ifTrue: [
		self mouseEnter: anEvent]