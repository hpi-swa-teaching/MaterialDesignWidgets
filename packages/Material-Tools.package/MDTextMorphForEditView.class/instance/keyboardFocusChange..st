event handling
keyboardFocusChange: weHaveFocus

	super keyboardFocusChange: weHaveFocus.
	eventReceiver state isFocused: weHaveFocus