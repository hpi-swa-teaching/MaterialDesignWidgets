drawing
calculateSize

	| w h diagonal center size |
	center := self clickableMorph position + self center.
	w := (self clickableMorph width - self center x) max: self center x.
	h := (self clickableMorph height - self center y) max: self center y.
	diagonal := (w squared + h squared) sqrt.
	size := (diagonal squared * 2) sqrt * 2.
	
	^ self scaleFactor * size