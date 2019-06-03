color-calculating
calculatePrimaryVariants

	self primaryColorDarkVariants: (self calculateDarkVariants: self primaryColor).
	self primaryColorLightVariants: (self calculateLightVariants: self primaryColor)