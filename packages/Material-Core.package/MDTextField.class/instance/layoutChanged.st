layout
layoutChanged

	super layoutChanged.
	"make size adaptable"
	"self scrollPane ifNotNil: [self setBoundsWidth: self width]"