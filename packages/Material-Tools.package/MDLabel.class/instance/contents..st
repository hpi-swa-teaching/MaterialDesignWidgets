accessing
contents: anObject 

	| newContents |
	
	anObject isString
		ifTrue: [newContents := anObject]
		ifFalse: [
			newContents := String streamContents: [:stream | 
			anObject printOn: stream]].
	
	self alwaysUppercase ifTrue: [ newContents := newContents asUppercase].
	super contents: newContents.