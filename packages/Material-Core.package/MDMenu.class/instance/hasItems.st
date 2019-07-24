accessing
hasItems
	
	^ submorphs
		anySatisfy: [:each | each isKindOf: MDMenuItem] 