color-calculating
calculateContrastOf: aColor and: anotherColor

	| contrast luminanceOfFirstColor luminanceOfSecondColor |
	
	luminanceOfFirstColor := self calculateLuminance: aColor.
	luminanceOfSecondColor := self calculateLuminance: anotherColor.
	
	contrast := (luminanceOfFirstColor + 0.05) / (luminanceOfSecondColor + 0.05).
	(contrast < 1) ifTrue: [contrast := 1 / contrast].

	^ contrast