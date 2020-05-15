helper methods
testEquality: aMDWidget with: aFormString

	MDContainedButtonTest updateAllMockObjects.
	MDDialogTest updateAllMockObjects.
	MDFloatingActionButtonTest updateAllMockObjects.
	MDListTest updateAllMockObjects.
	MDMenuTest updateAllMockObjects.
	MDMultiLineFieldTest updateAllMockObjects.
	MDOutlinedButtonTest updateAllMockObjects.
	MDTextAreaTest updateAllMockObjects.
	MDTextButtonTest updateAllMockObjects.
	MDTextFieldTest updateAllMockObjects.

	self assert: (self renderOnFormString: aMDWidget) = aFormString