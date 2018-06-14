forms
tests

	^ super tests
		at: #enabled 						put: true;
		yourself