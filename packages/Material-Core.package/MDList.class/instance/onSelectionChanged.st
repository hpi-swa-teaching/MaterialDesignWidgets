accessing
onSelectionChanged

	^ onSelectionChanged ifNil: [onSelectionChanged := [:item | ]]