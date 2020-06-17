instance creation
all: aNumber

	^ self new 
		topLeft: aNumber;
		topRight: aNumber;
		bottomLeft: aNumber;
		bottomRight: aNumber;
		yourself