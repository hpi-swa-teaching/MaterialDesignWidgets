transformations
alphaBlend: aForegroundColor on: aBackgroundColor

	| fgAlpha bgAlpha resultAlpha |
	fgAlpha := aForegroundColor alpha.
	bgAlpha := aBackgroundColor alpha.

	resultAlpha := fgAlpha + (bgAlpha * (1 - fgAlpha)).
	resultAlpha = 0 ifTrue: [^ Color transparent].

	^ Color
		r: (aForegroundColor red * fgAlpha + (aBackgroundColor red * bgAlpha * (1 - fgAlpha))) / resultAlpha
		g: (aForegroundColor green * fgAlpha + (aBackgroundColor green * bgAlpha * (1 - fgAlpha))) / resultAlpha
		b: (aForegroundColor blue * fgAlpha + (aBackgroundColor blue * bgAlpha * (1 - fgAlpha))) / resultAlpha
		alpha: resultAlpha