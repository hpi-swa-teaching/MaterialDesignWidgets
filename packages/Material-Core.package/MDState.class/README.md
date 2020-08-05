Interactive states that some of the Material widgets can take on when receiving input from the user.

States are defined by https://material.io/design/interaction/states.html#usage.

isHovered:
	The state when the user drags their mouse cursor over the given widget.
	See: https://material.io/design/interaction/states.html#hover.

isFocused:
	The state when the user navigates with the keyboard to a given widget.
	This can also sometimes be triggered when a widget is clicked. For example, when an MDTextField is clicked, it becomes focused.
	See: https://material.io/design/interaction/states.html#focus.

isPressed:
	The state when the user is actively pressing down on the given widget.
	See: https://material.io/design/interaction/states.html#pressed.

isSelected:
	The state when this item has been selected.
	This applies to things that can be toggled (such as chips and checkboxes) and things that are selected from a set of options (such as tabs and radio buttons).
	See: https://material.io/design/interaction/states.html#selected.

isActivated
	Activated states indicate which item from a set of options is currently being viewed. They are initiated either by default or user choice, using input methods such as a tap, cursor, keyboard, or voice input.
	An activated state differs from a selected state because it communicates a highlighted destination.
	See: https://material.io/design/interaction/states.html#activated.

isDragged:
	The state when this widget is being dragged from one place to another by the user.
	https://material.io/design/interaction/states.html#dragged.

isDisabled:
	The state when this widget disabled and can not be interacted with.
	Disabled widgets should not respond to hover, focus, press, or drag interactions.
	See: https://material.io/design/interaction/states.html#disabled.

isError:
	The state when the widget has entered some form of invalid state.
	See https://material.io/design/interaction/states.html#usage.