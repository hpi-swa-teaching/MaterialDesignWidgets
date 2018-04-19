as yet unclassified
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #labelString;
		extent: 200@100;
		children: {
			self buildContentsWith: aBuilder.
			self buildButtonBarWith: aBuilder.
		};
		yourself)