accessing
showColors

	| allVariants |

	allVariants := self primaryColorDarkVariants copy.
	allVariants add: self primaryColor.
	self primaryColorLightVariants reverseDo: [:each | allVariants add: each].
	self secondaryColorDarkVariants do: [:each | allVariants add: each].
	allVariants add: self secondaryColor.
	self secondaryColorLightVariants reverseDo: [:each | allVariants add: each].
	allVariants add: errorColor.
	allVariants add: surfaceColor.
	allVariants add: backgroundColor.
	self textColorOptions reverseDo: [:each | allVariants add: each].

	Color showColors: allVariants.