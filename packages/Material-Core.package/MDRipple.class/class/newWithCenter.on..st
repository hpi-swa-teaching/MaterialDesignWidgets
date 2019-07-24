initialization
newWithCenter: aPoint on: aMorph

	^ MDRipple new
		center: aPoint;
		clickableMorph: aMorph;
		startAnimation;
		yourself