control
getYPosition: aPoint

	(self bottomBorderInWorld: aPoint) 
		ifTrue: [^ aPoint  y]
		ifFalse: [^ World bottomRight y - self height]