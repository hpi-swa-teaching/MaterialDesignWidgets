color-calculating
textColorOn: aBackgroundColor

	| maxContrast currentContrast bestTextColor |

	maxContrast := 0.
	
	self textColorOptions do: [:color | 
		currentContrast := self calculateContrastOf: aBackgroundColor and: color.
		(currentContrast > maxContrast) ifTrue: [
			maxContrast := currentContrast.
			bestTextColor := color]].
	
	^ bestTextColor
	