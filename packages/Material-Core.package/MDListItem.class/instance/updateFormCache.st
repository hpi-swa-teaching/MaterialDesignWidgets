updating
updateFormCache

	| form |
	
	form := MDRenderer render: self onFormWithBackgroundColor: self backgroundColor.
	self formCache: form.
	self list changed.
	
	^ form