accessing
addFloatingActionButtons

	| fabColor fabDisabled |
	
	fabColor := MDFloatingActionButton icon: #ic_add.
	fabColor backgroundColor: '#018786'.
	fabDisabled := MDFloatingActionButton icon: #ic_add.
	fabDisabled state isDisabled: true.
	
	self
		addWidget: (MDFloatingActionButton icon: #ic_add); 
		addWidget: fabColor;
		addWidget: (MDFloatingActionButton icon: #ic_report_problem);
		addWidget: fabDisabled