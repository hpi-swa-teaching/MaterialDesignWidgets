initialization
initializeLabelArea
	
	label := MDLabel new contents: self labelString.
	label color: (MDColorTheme currentTheme textColorOn: MDColorTheme currentTheme primaryColor).
	self 
		addLabelArea;
		setLabelWidgetAllowance;
		addButtonsAndLabel;
		setFrameForSystemBar;
		setFrameForAppBar.
	Preferences  noviceMode ifTrue: [
		closeBox ifNotNil: [closeBox setBalloonText: 'close window'].
		menuBox ifNotNil: [menuBox setBalloonText: 'window menu'].
		collapseBox ifNotNil: [collapseBox setBalloonText: 'collapse/expand window']]
