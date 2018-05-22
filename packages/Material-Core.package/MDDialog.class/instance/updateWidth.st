layout
updateWidth

	self width: { self calculateWidthByTitle . self calculateWidthByText } max.
	self updatePosition