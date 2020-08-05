color-calculating
calculateLuminance: aColor

	"Calculation according to WCAG 2.0: 1.4.3 - Contrast"

	| redWeight greenWeight blueWeight |
	
	redWeight := self calculateChannelWeightFor: (aColor red).
	greenWeight := self calculateChannelWeightFor: (aColor green).
	blueWeight := self calculateChannelWeightFor: (aColor blue).
	
	^ (redWeight * 0.2126) + (greenWeight * 0.7152) + (blueWeight * 0.0722)