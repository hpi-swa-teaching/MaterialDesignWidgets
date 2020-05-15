testing
testBackgroundColor

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

	MDWidget subclasses do: [:each |
		self testBackgroundColorWith: each new]
	