as yet unclassified
addLabelArea

	labelArea ifNotNil: [labelArea abandon].
	labelArea := MDTitleBar new
			backgroundColor: Color black;
			yourself.
	self addMorph: labelArea