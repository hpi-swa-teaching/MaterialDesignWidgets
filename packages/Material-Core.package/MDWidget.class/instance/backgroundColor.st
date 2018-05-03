as yet unclassified
backgroundColor

	^ self properties at: #backgroundColor ifAbsent: [ ^ self backgroundColor: '#F44336' ]