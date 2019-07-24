utils
performMouseEnterOn: aMDWidget
	
	| event |
	
	event := MouseEvent new
		setType: #mouseEnter;
		setHand: ActiveHand;
		yourself.
	aMDWidget mouseEnter: event.
	
	^ aMDWidget