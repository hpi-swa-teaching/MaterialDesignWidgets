testing
testIconCreation

	((MDIcon class allSelectors
		select: [:each | each beginsWith: 'ic_'])
		sorted)
		do: [:each |
			(MDIcon perform: each)
				svgColor: Color white;
				openInWorld: world]