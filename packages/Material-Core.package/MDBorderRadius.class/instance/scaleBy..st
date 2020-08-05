accessing
scaleBy: aNumber

	^ self class topLeft: (self topLeft * aNumber) topRight: (self topRight * aNumber) bottomLeft: (self bottomLeft * aNumber) bottomRight: (self bottomRight * aNumber)