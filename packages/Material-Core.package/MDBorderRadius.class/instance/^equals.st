comparing
= anObject

	^ self species = anObject species and: 
		[self topLeft = anObject topLeft and: 
			[self topRight = anObject topRight and: 
				[self bottomLeft = anObject bottomLeft and:
					[self bottomRight = anObject bottomRight]]]]