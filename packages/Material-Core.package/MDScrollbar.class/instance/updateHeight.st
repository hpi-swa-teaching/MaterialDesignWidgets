updating
updateHeight

	| percentage |
	self scrollableWidget contentHeight > 0 ifTrue: [
		percentage := self scrollableWidget height / self scrollableWidget contentHeight.
		percentage >= 1
			ifTrue: [self visible: false]
			ifFalse: [self height: (percentage * self scrollableWidget height max: self class maxHeight)]]