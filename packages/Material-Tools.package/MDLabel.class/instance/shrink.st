scaling
shrink

	self fullContents ifNotEmpty: [
		contents := self fullContents first asString.
		self fitContents]