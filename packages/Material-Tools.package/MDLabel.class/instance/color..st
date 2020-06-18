accessing
color: aColor

	|alpha|
	alpha := self class materialEmphases at: self materialEmphasis.
	super color: (aColor alpha: alpha)