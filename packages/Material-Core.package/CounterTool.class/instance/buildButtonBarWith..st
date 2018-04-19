as yet unclassified
buildButtonBarWith: builder

	| panelSpec i q |
	panelSpec := builder pluggablePanelSpec new
		layout: #horizontal;
		spacing: -1;
		frame: (0@0.5 corner: 1@1);
		children: OrderedCollection new;
		yourself.

	i := builder pluggableButtonSpec new.
	i 
			model: self;
			label: 'increment';
			help: 'Show instance-side methods' translated;
			action: #actionIncrement.

	q := builder pluggableButtonSpec new.
	q 
			model: self;
			horizontalResizing: #shrinkWrap;
			label: 'reset';
			help: 'Cycle between definition, comment, and hierarchy view' translated;
			action: #actionReset.
			
	panelSpec children addAll: {
		i.
		builder pluggableSpacerSpec new.
		q
	}.

	^panelSpec