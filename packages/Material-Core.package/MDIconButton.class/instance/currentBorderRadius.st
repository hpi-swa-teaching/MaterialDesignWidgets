accessing
currentBorderRadius

	| radius |
	radius := (self bounds center - self position) x.
	
	^ MDBorderRadius all: radius