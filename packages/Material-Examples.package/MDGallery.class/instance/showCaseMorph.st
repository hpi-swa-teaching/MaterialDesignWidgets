accessing
showCaseMorph

	^ showCaseMorph ifNil: [
		showCaseMorph := Morph new
			color:  Color transparent;
			layoutPolicy: ProportionalLayout new;
			yourself]
