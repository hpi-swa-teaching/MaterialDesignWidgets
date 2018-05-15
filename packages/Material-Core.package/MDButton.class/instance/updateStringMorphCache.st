as yet unclassified
updateStringMorphCache

	| stringMorph |
	stringMorph := StringMorph contents: self text font: TextStyle defaultFont.
	stringMorph color: self textColor.
	
	self stringMorphCache: stringMorph