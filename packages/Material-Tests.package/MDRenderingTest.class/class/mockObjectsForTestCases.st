utils
mockObjectsForTestCases

	^ { 
		#default -> {
			MDTextButton -> self textButtonMockObject_default.
			MDContainedButton -> self containedButtonMockObject_default.
			MDOutlinedButton -> self outlinedButtonMockObject_default.
		} asDictionary.
		
		#alternativeText -> {
			MDTextButton -> self textButtonMockObject_alternativeText.
			MDContainedButton -> self containedButtonMockObject_alternativeText.
			MDOutlinedButton -> self outlinedButtonMockObject_alternativeText.
		} asDictionary.
		
		#alternativeBackgroundColor -> {
			MDContainedButton -> self containedButtonMockObject_alternativeBackgroundColor.
		} asDictionary.
		
		#mouseEnter -> {
			MDTextButton -> self textButtonMockObject_mouseEnter.
			MDContainedButton -> self containedButtonMockObject_mouseEnter.
			MDOutlinedButton -> self outlinedButtonMockObject_mouseEnter.
		} asDictionary.
		
		#disabled -> {
			MDTextButton -> self textButtonMockObject_disbaled.
			MDContainedButton -> self containedButtonMockObject_disbaled.
			MDOutlinedButton -> self outlinedButtonMockObject_disbaled.
		} asDictionary.
		
		
	} asDictionary