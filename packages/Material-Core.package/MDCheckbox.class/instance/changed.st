updating
changed

	self state isSelected
		ifTrue: [
			"self borderWidth: 0."
			"self backgroundColor: self class defaultBackgroundColor."
			self addIcon: self checkedIcon]
		ifFalse: [
			self removeIcon.
			"self backgroundColor: self currentBackgroundColor."
			"self borderWidth: 2"].

	super changed