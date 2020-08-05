drop shadows
hasDropShadow: aBool
	"The implementation in Morph first calls changed and only then modifies the underlying property. As we sometimes add a shadow on changed, this results in an endless loop. Hence we override this method, update the value first and only then call changed."

	(self hasDropShadow = aBool) ifTrue: [^ self].

	aBool
		ifTrue: [self setProperty: #hasDropShadow toValue: true]
		ifFalse: [self removeProperty: #hasDropShadow].

	self layoutChanged.
	self changed