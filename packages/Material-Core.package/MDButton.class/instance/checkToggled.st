drawing
checkToggled

		self isEnabled ifTrue: [
			(self isToggled) 
				ifTrue: [
					self currentBackgroundColor: self backgroundColorToggled.
					self currentTextColor: self textColorToggled]
				ifFalse: [
					self currentBackgroundColor: self backgroundColor.
					self currentTextColor: self textColor]]