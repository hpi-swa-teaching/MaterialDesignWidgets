drawing
drawOn: aCanvas

	self isChecked ifTrue: [ Transcript showln: 'draw checked' ]
		ifFalse: [ Transcript showln: 'draw unchecked' ].
	super drawOn: aCanvas.
	"self updateContents: aCanvas"