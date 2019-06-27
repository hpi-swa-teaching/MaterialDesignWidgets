as yet unclassified
buildCodePaneWith: builder

	| textSpec top buttonSpec |
	
	top := builder pluggablePanelSpec new.
	top children: OrderedCollection new.
	textSpec := builder pluggableCodePaneSpec new.
	textSpec 
		model: self;
		getText: #contents; 
		setText: #contents:notifying:; 
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:.
	textSpec frame: self textFrame.
	top children add: textSpec.
	self wantsOptionalButtons ifTrue: [
		buttonSpec := self buildOptionalButtonsWith: builder.
		buttonSpec frame: self optionalButtonsFrame.
		top children add: buttonSpec].
	
	^ top 