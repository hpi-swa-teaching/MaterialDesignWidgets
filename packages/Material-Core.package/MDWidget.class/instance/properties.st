accessing
properties
	^ properties ifNil: [ ^ properties := {} asDictionary ]