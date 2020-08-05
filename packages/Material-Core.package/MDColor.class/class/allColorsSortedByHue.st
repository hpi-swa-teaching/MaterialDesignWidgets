named colors
allColorsSortedByHue

    ^ self allColors sorted: [:aColor :anotherColor | aColor value hue < anotherColor value hue]