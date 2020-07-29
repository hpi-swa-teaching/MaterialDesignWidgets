event handling
checkContactBlock

	^ [
		| shouldBeDisabled |
		shouldBeDisabled := self textfield text isEmpty
			or: [self textFieldSurname text isEmpty]
			or: [self textFieldPhoneNumber text isEmpty].
		self contactButtonAdd state isDisabled: shouldBeDisabled]