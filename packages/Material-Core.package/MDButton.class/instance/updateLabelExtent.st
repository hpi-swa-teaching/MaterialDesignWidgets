drawing
updateLabelExtent

	| availableWidth |
	
	availableWidth := self width.
	self hasIcon ifTrue: [availableWidth := availableWidth - self icon width].
	self hasIconRight ifTrue: [availableWidth := availableWidth - self iconRight width].
	availableWidth := availableWidth - (self class minimumPadding * 2).
	
	availableWidth < self labelShrinkThreshold
		ifTrue: [self label shrink]
		ifFalse: [
			self label expand.
			availableWidth < self label fullWidth
				ifTrue: [self label width: availableWidth]]