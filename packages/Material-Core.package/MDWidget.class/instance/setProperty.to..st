accessing
setProperty: aSymbol to: aValue

	((self properties includesKey: aSymbol)
		and: [(self properties at: aSymbol) = aValue]) ifTrue: [^ self].

	self properties at: aSymbol put: aValue.
	self changed.

	^ aValue