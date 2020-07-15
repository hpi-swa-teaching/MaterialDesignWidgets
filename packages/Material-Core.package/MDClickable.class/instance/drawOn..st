drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	(self wantsRipples and: [self state isEnabled])
		ifTrue: [self drawRipplesOn: aCanvas]
	