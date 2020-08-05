accessing
selectedColorProperty

	^ selectedColorProperty ifNil: [selectedColorProperty := #primaryColor:]