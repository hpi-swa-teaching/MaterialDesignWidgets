drawing
drawOn: aCanvas

	aCanvas asBalloonCanvas
		aaLevel: 4;
		fillOval: self bounds color: self backgroundColor.
	self updateContents: aCanvas. 
	self drawRipplesOn: aCanvas
