initialize-release
addLabelArea

	labelArea ifNotNil: [labelArea abandon].
	labelArea := MDTitleBar new.
	self addMorph: labelArea