properties
calculateColor
	
	| overlay newColor |
	
	newColor := self backgroundColor.
	
	self wantsStates 
		ifTrue: [
			self isDisabled
				ifTrue: [newColor := self backgroundColorDisabled]
				ifFalse: [ 
					overlay := self class stateToOverlay at: self state ifAbsent: [0].
					newColor := newColor + (self backgroundColor * overlay)]].
		
	^ self currentBackgroundColor: newColor