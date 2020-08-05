utils
showColors

	| allVariants |

	allVariants := {
		self primaryColorLight.
		self primaryColor.
		self primaryColorDark.
		self secondaryColorLight.
		self secondaryColor.
		self secondaryColorDark.
		self errorColor.
		self disabledColor.
		self dividerColor.
		self surfaceColor.
		self backgroundColor} asOrderedCollection.
	self textColorOptions reverseDo: [:each | allVariants add: each].

	Color showColors: allVariants