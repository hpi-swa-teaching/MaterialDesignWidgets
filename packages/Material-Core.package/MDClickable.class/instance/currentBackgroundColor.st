accessing
currentBackgroundColor

	(self state isEnabled and: [self state isHovered]) ifTrue: [
		| contrastColor |
		contrastColor := (self class currentTheme textColorOn: self backgroundColor)
			alphaMixed: self class hoverOverlayOpacity.
		^ MDColor alphaBlend: contrastColor on: self backgroundColor].

	^ super currentBackgroundColor