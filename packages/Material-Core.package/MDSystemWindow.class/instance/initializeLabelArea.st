as yet unclassified
initializeLabelArea
	
	labelString ifNil: [labelString := 'Untitled Window'].
	label := MDLabel new contents: labelString.
	label color: (MDColorTheme currentTheme textColorOn: MDColorTheme currentTheme primaryColor).		
	self 
		addLabelArea;
		setLabelWidgetAllowance;
		addButtonsAndLabel;
		setFramesForLabelArea.
	Preferences noviceMode ifTrue: [
		closeBox ifNotNil: [closeBox setBalloonText: 'close window'].
		menuBox ifNotNil: [menuBox setBalloonText: 'window menu'].
		collapseBox ifNotNil: [collapseBox setBalloonText: 'collapse/expand window']]
