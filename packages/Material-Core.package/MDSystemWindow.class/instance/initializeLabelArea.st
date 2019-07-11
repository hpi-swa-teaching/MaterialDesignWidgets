as yet unclassified
initializeLabelArea
	
	labelString ifNil: [labelString := 'Untitled Window'].
	label := MDLabel new contents: labelString.
	label color: (MDColorTheme currentTheme textColorOn: MDColorTheme currentTheme primaryColor).
	"stripes := Array
		with: (RectangleMorph newBounds: bounds)
		with: (RectangleMorph newBounds: bounds)."
		
	self addLabelArea.
	self setLabelWidgetAllowance.
	self addButtonsAndLabel.
	self setFramesForLabelArea.
	Preferences noviceMode
		ifTrue: [
			closeBox ifNotNil: [closeBox setBalloonText: 'close window'].
			menuBox ifNotNil: [menuBox setBalloonText: 'window menu'].
			collapseBox ifNotNil: [collapseBox setBalloonText: 'collapse/expand window']]
