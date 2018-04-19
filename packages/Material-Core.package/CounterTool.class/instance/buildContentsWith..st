as yet unclassified
buildContentsWith: aBuilder.
	^ aBuilder pluggableTextSpec new
		model: self;
		readOnly: true;
		getText: #counterValue;
		frame: (0@0 corner: 1@0.5);
		yourself.