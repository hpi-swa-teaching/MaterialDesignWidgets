drawing
drawOn: aCanvas
	
	aCanvas fillRoundRect: (self bounds) radius: self borderRadius fillStyle: (SolidFillStyle new color: self backgroundColor).
	super drawRipplesOn: aCanvas