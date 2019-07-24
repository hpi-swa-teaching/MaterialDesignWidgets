event handling
mouseEnterDragging: anEvent
	
	(anEvent hand hasSubmorphs and:[self dropEnabled]) ifFalse: [
		^ super mouseEnterDragging: anEvent].
	
	(self wantsDroppedMorph: anEvent hand firstSubmorph event: anEvent) 
		ifTrue: [
			potentialDropRow := self rowAtLocation: anEvent position.
			anEvent hand newMouseFocus: self.
			self changed]
