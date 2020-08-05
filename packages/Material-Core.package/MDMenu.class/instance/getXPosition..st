control
getXPosition: aPoint

	(self rightBorderInWorld: aPoint) 
		ifTrue: [^ aPoint x]
		ifFalse: [^ aPoint x - self width]