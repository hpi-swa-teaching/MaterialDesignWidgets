color-calculating
calculateSecondaryVariants

	self secondaryColorDarkVariants: (self calculateDarkVariants: self secondaryColor).
	self secondaryColorLightVariants: (self calculateLightVariants: self secondaryColor)