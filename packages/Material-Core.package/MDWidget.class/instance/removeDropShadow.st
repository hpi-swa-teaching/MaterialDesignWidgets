drop shadows
removeDropShadow
	"See hasDropShadow: for why we overwrite this method."

	self hasDropShadow ifFalse: [^self].

	self hasDropShadow: false.
	fullBounds ifNotNil: [fullBounds := self privateFullBounds].
	self changed