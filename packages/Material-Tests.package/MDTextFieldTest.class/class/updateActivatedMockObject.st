mock object helper methods
updateActivatedMockObject

	| widget |
	widget := self new widget.
	widget state isActivated: true.

	self
		renderOnFormString: widget
		andStoreWithName: 'activated'