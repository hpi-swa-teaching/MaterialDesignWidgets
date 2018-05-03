as yet unclassified
hexToColor: aValue

	| color |
	color := aValue.
	color isColor
		ifFalse: [
			color first = $# ifTrue: [ color := color allButFirst ].
			color := Color fromHTMLString: color ].
	
	^ color