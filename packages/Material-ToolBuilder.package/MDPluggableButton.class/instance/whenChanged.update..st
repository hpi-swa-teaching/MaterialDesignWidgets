updating
whenChanged: aNotification update: aTarget
	"On receipt of a notification, such as #contents notification from a CodeHolder,
	invoke an update as if target had been the original notification."

	self updateMap at: aNotification put: aTarget