color-calculating
calculateChannelWeightFor: aColorChannel

	"Calculation according to WCAG 2.0: 1.4.3 - Contrast"

	^ (aColorChannel <= 0.03928) 
		ifTrue: [aColorChannel / 12.92]
		ifFalse: [((aColorChannel + 0.055) / 1.055) ** 2.4]