drawing
updateLabelExtent

	| availibleWidth |
	
	availibleWidth := self width.
	self hasIcon ifTrue: [availibleWidth := availibleWidth - self icon width].
	self hasIconRight ifTrue: [availibleWidth := availibleWidth - self iconRight width].
	availibleWidth := availibleWidth - (self class minimumPadding * 2).
	
	availibleWidth < self labelShrinkThreshold
		ifTrue: [self label shrink]
		ifFalse: [
			self label expand.
			availibleWidth < self label fullWidth
				ifTrue: [self label width: availibleWidth]]