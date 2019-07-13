keystrokes
basicKeyPressed: aChar 

	| milliseconds slowKeyStroke |

	self getListSize = 0 ifTrue: [^ self flash].
	milliseconds := Time millisecondClockValue.
	slowKeyStroke := (Time
		milliseconds: milliseconds
		since: self lastKeystrokeTime) > (self filterableList ifTrue: [500] ifFalse: [300]).
	self lastKeystrokeTime: milliseconds.
	slowKeyStroke
		ifTrue: [self lastKeystrokes: aChar asLowercase asString]
		ifFalse: [ "append quick keystrokes but don't move selection if it still matches"
			self lastKeystrokes: self lastKeystrokes , aChar asLowercase asString].
	"No change if model is locked"
	self model okToChange ifFalse: [^ self].
	
	self filterList: self lastKeystrokes