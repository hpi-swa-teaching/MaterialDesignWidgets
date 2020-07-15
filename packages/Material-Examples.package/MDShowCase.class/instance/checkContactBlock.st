event handling
checkContactBlock

	^ [
		| isDisabled |
		isDisabled := self textfield text isEmpty
			or: [self textFieldSurname text isEmpty]
			or: [self textFieldPhoneNumber text isEmpty].
		self contactButtonAdd state isDisabled: isDisabled]