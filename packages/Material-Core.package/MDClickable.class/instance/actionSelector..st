accessing
actionSelector: aSymbolOrString

	(aSymbolOrString isNil or: ['nil' = aSymbolOrString or: [aSymbolOrString isEmpty]])
		ifTrue: [^ actionSelector := nil].

	actionSelector := aSymbolOrString asSymbol
