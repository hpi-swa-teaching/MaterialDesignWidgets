as yet unclassified
checkboxWithText: aString

	^ self hWrapper
		addMorphBack: MDCheckbox new;
		addMorphBack: (self hSpacer);
		addMorphBack: (MDLabel new
			contents: aString; yourself);
		yourself