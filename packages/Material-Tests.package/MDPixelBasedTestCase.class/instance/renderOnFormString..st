rendering
renderOnFormString: aMDWidget

	| form |
	form := MDRenderer render: aMDWidget onFormWithBackgroundColor: Color white.
	
	^ form storeString