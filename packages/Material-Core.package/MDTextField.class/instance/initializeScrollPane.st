initialization
initializeScrollPane

	self scrollPane: (MDScrollPane new
		eventReceiver: self;
		color: Color transparent;
		borderWidth: 0;
		hScrollBarPolicy: self hScrollBarPolicy;
		vScrollBarPolicy: self vScrollBarPolicy;
		yourself)