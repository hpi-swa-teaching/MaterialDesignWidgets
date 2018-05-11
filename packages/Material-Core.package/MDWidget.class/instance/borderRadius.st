border
borderRadius

	^ self properties at: #borderRadius ifAbsent: [ ^ self borderRadius: 0 ]