initialization
initializeContactButtonAdd

	self contactButtonAdd: MDContainedButton new.
	self contactButtonAdd
		text: 'Add';
		icon: #ic_person_add;
		addClickedActionBlock: self contactButtonAddBlock;
		addClickedActionBlock: [self newContact delete];
		disable.
	self contactButtonAdd position: (130 @ 370) + self newContact position.
	self newContact addMorphBack: self contactButtonAdd