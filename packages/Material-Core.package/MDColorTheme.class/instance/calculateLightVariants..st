color-calculating
calculateLightVariants: aColor

	| calculatedColors |
	
	calculatedColors := (aColor lightShades: self class numberOfShades + 2) asOrderedCollection.
	calculatedColors 
		remove: calculatedColors first;
		remove: calculatedColors last.
		
	^ calculatedColors