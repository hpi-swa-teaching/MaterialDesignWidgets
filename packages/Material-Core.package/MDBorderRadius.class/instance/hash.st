comparing
hash

	^ self topLeft xor: [self topRight xor: [self bottomLeft xor: [self bottomRight]]]