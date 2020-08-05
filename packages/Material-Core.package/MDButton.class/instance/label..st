accessing
label: anObject

	anObject isString 
		ifTrue: [self labelContents: anObject]
		ifFalse: [label := anObject]