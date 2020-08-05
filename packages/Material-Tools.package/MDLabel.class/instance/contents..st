accessing
contents: anObject

	| scanner newContents |
	
	anObject isString
		ifTrue: [newContents := anObject]
		ifFalse: [
			newContents := String streamContents: [:stream | 
			anObject printOn: stream]].
	
	self alwaysUppercase ifTrue: [ newContents := newContents asUppercase].
	contents := newContents isText
				ifTrue: [scanner := StringMorphAttributeScanner new initializeFromStringMorph: self.
					(newContents attributesAt: 1 forStyle: self font textStyle)
						do: [:attr | attr emphasizeScanner: scanner].
					emphasis := scanner emphasis.
					font := scanner font.
					color := MDColorTheme currentTheme textColorOn: MDColorTheme currentTheme primaryColor.
					newContents string]
				ifFalse: [contents = newContents
						ifTrue: [^ self].
					"no substantive change"
					newContents].
	self fitContents.
	self fullContents: newContents