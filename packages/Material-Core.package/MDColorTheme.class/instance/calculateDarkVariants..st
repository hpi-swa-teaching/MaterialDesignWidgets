color-calculating
calculateDarkVariants: aColor

	| calculatedColors |
	
	calculatedColors := (aColor darkShades: self class numberOfShades + 2) asOrderedCollection.
	calculatedColors remove: calculatedColors first;
		remove: calculatedColors last.
		
	^ calculatedColors