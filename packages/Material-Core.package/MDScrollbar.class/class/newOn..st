instance creation
newOn: aMDWidget

	^ self new
		scrollableWidget: aMDWidget;
		updatePosition;
		yourself