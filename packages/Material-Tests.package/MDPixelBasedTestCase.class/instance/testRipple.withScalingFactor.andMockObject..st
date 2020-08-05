testing
testRipple: aMDWidget withScalingFactor: aNumber andMockObject: aMockObject

	aMDWidget removeRipples.
	self performRippleSimulationOn: aMDWidget withScaleFactor: aNumber.
	self testEquality: aMDWidget with: aMockObject